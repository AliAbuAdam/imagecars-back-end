import 'dart:isolate';

import 'package:auth/data/db.dart';
import 'package:auth/data/models/info/app_info.dart';
import 'package:auth/data/models/user/user.dart';
import 'package:auth/env.dart';
import 'package:auth/generated/auth.pbgrpc.dart';
import 'package:auth/utils.dart';
import 'package:grpc/grpc.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:stormberry/stormberry.dart';
import 'package:username_generator/username_generator.dart';

class AuthRpc extends AuthRpcServiceBase {
  @override
  Future<ResponseDto> deleteUser(
    ServiceCall call,
    RequestDto request,
  ) async {
    final id = Utils.getIdFromMetadata(call);
    final user = await db.users.queryShortView(id);
    if (user == null) throw GrpcError.notFound('User not found');
    await db.users.deleteOne(id);
    return ResponseDto(message: 'Success');
  }

  // get self user
  @override
  Future<UserDto> fetchUser(
    ServiceCall call,
    RequestDto request,
  ) async {
    final id = Utils.getIdFromMetadata(call);
    final user = await db.users.queryFullView(id);
    if (user == null) throw GrpcError.notFound('User not found');
    return Utils.parseUser(user);
  }

  // get full user
  @override
  Future<UserDto> fetchUserOnId(
    ServiceCall call,
    UserDto request,
  ) async {
    final id = int.tryParse(request.id);
    if (id == null) throw GrpcError.notFound('User id not found');
    final user = await db.users.queryFullView(id);
    if (user == null) throw GrpcError.notFound('User not found');
    return Utils.parseUser(user);
  }

  @override
  Future<ListUserDto> fetchGMS(
    ServiceCall call,
    FetchGMSRequestDto request,
  ) async {
    final limit = int.tryParse(request.limit) ?? 100;
    final offset = int.tryParse(request.offset) ?? 0;
    final key = request.groupKey;
    final query = "group_id=$key";
    final listUsers = await db.users.queryShortViews(QueryParams(
      limit: limit,
      offset: offset,
      orderBy: 'username',
      where: query,
    ));
    return await Isolate.run(() => Utils.parseUsers(listUsers));
  }

  // get short user
  @override
  Future<UserDto> findUser(ServiceCall call, FindRequestDto request) async {
    final userId = int.tryParse(request.id);
    if (userId == null) throw GrpcError.notFound('User id not found');

    final user = await db.users.queryShortView(userId);
    if (user == null) throw GrpcError.notFound('User not found');

    return await Isolate.run(() => Utils.parseShortUser(user));
  }

  @override
  Future<TokensDto> refreshToken(ServiceCall call, TokensDto request) async {
    // Проверки на присутствие данных
    if (request.refreshToken.isEmpty) {
      throw GrpcError.invalidArgument('Refresh token not found');
    }
    final id = Utils.getIdFromToken(request.refreshToken);
    final user = await db.users.queryFullView(id);
    if (user == null) throw GrpcError.notFound('User not found');
    return _createTokens(user.id.toString());
  }

  @override
  Future<UserDto> updateUser(ServiceCall call, UserDto request) async {
    try {
      final id = Utils.getIdFromMetadata(call);
      final userNameIsEmpty = request.username.isEmpty;
      await db.users.updateOne(UserUpdateRequest(
        id: id,
        username: userNameIsEmpty ? null : request.username,
        gender: request.hasGender() ? request.gender.name : null,
        name: request.name.isNotEmpty ? request.name : null,
        phone: request.phone.isNotEmpty ? request.phone : null,
        telegram: request.telegram.isNotEmpty ? request.telegram : null,
        groupId: request.groupId != 0 ? request.groupId : null,
        codeWord: request.hasCodeWord() ? request.codeWord : null,
        carModel: request.hasCarModel() ? request.carModel : null,
        vinCode: request.hasVinCode() ? request.vinCode : null,
        yearOfManufacture:
            request.hasYearOfManufacture() ? request.yearOfManufacture : null,
        gosNumber: request.hasGosNumber() ? request.gosNumber : null,
        preferences: request.hasPreferences() ? request.preferences : null,
      ));

      final updatedUser = await db.users.queryFullView(id);
      if (updatedUser == null) throw GrpcError.notFound('User not found');
      return Utils.parseUser(updatedUser);
    } catch (error) {
      throw GrpcError.unknown(error.toString());
    }
  }

  TokensDto _createTokens(String id) {
    final accessTokenSet = JwtClaim(
      maxAge: Duration(hours: Env.accessTokenTime),
      otherClaims: {'user_id': id},
    );
    final refreshTokenSet = JwtClaim(
      maxAge: Duration(hours: Env.refreshTokenTime),
      otherClaims: {'user_id': id},
    );

    return TokensDto(
      accessToken: issueJwtHS256(accessTokenSet, Env.secretKey),
      refreshToken: issueJwtHS256(refreshTokenSet, Env.secretKey),
    );
  }

  @override
  Future<TokensDto> authWithEmail(
    ServiceCall call,
    SignInRequestDto request,
  ) async {
    if (request.email.isEmpty) {
      throw GrpcError.invalidArgument('Email not found');
    }
    // fetch user with email
    final users = await db.users.queryFullViews(
      QueryParams(
        limit: 1,
        where: "email='${request.email}'",
      ),
    );

    try {
      if (users.isEmpty) {
        // create user
        final userId = await db.users.insertOne(
          UserInsertRequest(
            username: _generateUsername(),
            email: request.email,
            groupId: 0,
            registerDate: DateTime.now().toIso8601String(),
            coins: 0,
          ),
        );

        final user = await db.users.queryFullView(userId);
        if (user == null) {
          throw GrpcError.notFound('User not found');
        }
        return _createTokens(user.id.toString());
      } else {
        // identification
        final user = users.first;
        return _createTokens(user.id.toString());
      }
    } catch (error) {
      print(error.toString());
      throw GrpcError.internal(error.toString());
    }
  }

  String _generateUsername() => UsernameGenerator().generateRandom();

  // get a list of users by id
  @override
  Future<ListUserDto> fetchUsers(
    ServiceCall call,
    FetchUsersRequestDto request,
  ) async {
    try {
      List<ShortUserView> users = [];
      for (var id in request.userIds) {
        final userId = int.parse(id);
        final user = await db.users.queryShortView(userId);
        if (user == null) {
          throw GrpcError.notFound('User not found');
        }
        users.add(user);
      }
      return await Isolate.run(() => Utils.parseUsers(users));
    } catch (error) {
      throw GrpcError.internal(error.toString());
    }
  }

  @override
  Future<AppInfoDto> fetchAppInfo(
    ServiceCall call,
    RequestDto request,
  ) async {
    final appInfoView = (await db.appInfos.queryAppInfos()).first;
    return AppInfoDto(lastVersion: appInfoView.lastVersion);
  }
}
