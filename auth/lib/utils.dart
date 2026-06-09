import 'dart:convert';
import 'package:auth/data/models/user/user.dart';
import 'package:auth/env.dart';
import 'package:auth/generated/auth.pbgrpc.dart';
import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart';
import 'package:grpc/grpc.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';

import 'data/models/service_log/user_service_log.dart';

abstract class Utils {
  // Хэширования пароля
  static String getHashPassword(String password) {
    final bytes = utf8.encode(password + Env.secretKey);
    return sha256.convert(bytes).toString();
  }

  // Шифрование поля
  static String encryptField(String value, {bool isDecode = false}) {
    final key = Key.fromUtf8(Env.dbSecretKey);
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key));

    final encrypted = encrypter.encrypt(value, iv: iv);
    final decrypted = encrypter.decrypt(encrypted, iv: iv);

    return isDecode ? decrypted : encrypted.base64;
  }

  // Получение id из токена
  static int getIdFromToken(String token) {
    final jwtClaim = verifyJwtHS256Signature(token, Env.secretKey);
    final id = int.tryParse(jwtClaim['user_id']);
    if (id == null) throw GrpcError.dataLoss('User id not found');
    return id;
  }

  // Получение id из метадаты
  static int getIdFromMetadata(ServiceCall serviceCall) {
    final accessToken = serviceCall.clientMetadata?['token'] ?? '';
    return getIdFromToken(accessToken);
  }

  // Сборка UserDto из общих полей view.
  // groupId/codeWord передаются явно: codeWord помечен как приватный в proto,
  // поэтому короткий (неавторизованный) view их не отдаёт.
  static UserDto _buildUserDto({
    required int id,
    required String username,
    required String email,
    String? gender,
    String? name,
    String? registerDate,
    int? groupId,
    String? telegram,
    String? phone,
    String? codeWord,
    required double coins,
    String? carManufacturer,
    String? carModel,
    String? vinCode,
    int? yearOfManufacture,
    String? gosNumber,
    String? preferences,
  }) {
    return UserDto(
      id: id.toString(),
      username: username,
      email: email,
      gender: gender != null
          ? Gender.values.firstWhere((element) => element.name == gender)
          : null,
      name: name,
      registerDate: registerDate,
      groupId: groupId,
      telegram: telegram,
      phone: phone,
      codeWord: codeWord,
      coins: coins,
      carManufacturer: carManufacturer,
      carModel: carModel,
      vinCode: vinCode,
      yearOfManufacture: yearOfManufacture,
      gosNumber: gosNumber,
      preferences: preferences,
    );
  }

  // Конвертация в полный UserDto (с groupId и приватным codeWord)
  static UserDto parseUser(FullUserView view) => _buildUserDto(
        id: view.id,
        username: view.username,
        email: view.email,
        gender: view.gender,
        name: view.name,
        registerDate: view.registerDate,
        groupId: view.groupId,
        telegram: view.telegram,
        phone: view.phone,
        codeWord: view.codeWord,
        coins: view.coins,
        carManufacturer: view.carManufacturer,
        carModel: view.carModel,
        vinCode: view.vinCode,
        yearOfManufacture: view.yearOfManufacture,
        gosNumber: view.gosNumber,
        preferences: view.preferences,
      );

  // Конвертация в короткий UserDto (без groupId/codeWord)
  static UserDto parseShortUser(ShortUserView view) => _buildUserDto(
        id: view.id,
        username: view.username,
        email: view.email,
        gender: view.gender,
        name: view.name,
        registerDate: view.registerDate,
        telegram: view.telegram,
        phone: view.phone,
        coins: view.coins,
        carManufacturer: view.carManufacturer,
        carModel: view.carModel,
        vinCode: view.vinCode,
        yearOfManufacture: view.yearOfManufacture,
        gosNumber: view.gosNumber,
        preferences: view.preferences,
      );

  // Конвертация в ListUserDto (с groupId и codeWord, как и раньше)
  static ListUserDto parseUsers(List<ShortUserView> listView) {
    try {
      return ListUserDto(
        users: listView.map(parseUserFromShortView).toList(),
      );
    } catch (e) {
      throw GrpcError.internal('Error in parseUsers ${e.toString()}');
    }
  }

  // Короткий view -> полный UserDto (с groupId/codeWord)
  static UserDto parseUserFromShortView(ShortUserView view) => _buildUserDto(
        id: view.id,
        username: view.username,
        email: view.email,
        gender: view.gender,
        name: view.name,
        registerDate: view.registerDate,
        groupId: view.groupId,
        telegram: view.telegram,
        phone: view.phone,
        codeWord: view.codeWord,
        coins: view.coins,
        carManufacturer: view.carManufacturer,
        carModel: view.carModel,
        vinCode: view.vinCode,
        yearOfManufacture: view.yearOfManufacture,
        gosNumber: view.gosNumber,
        preferences: view.preferences,
      );

  static UserServiceLogDto parseUserServiceLog(UserServiceLogView view) {
    return UserServiceLogDto(
      id: view.id.toString(),
      date: view.date,
      serviceId: view.serviceId,
      price: view.price,
    );
  }

  static List<UserServiceLogDto> parseListUserServiceLog(
    List<UserServiceLogView>? list,
  ) {
    if (list == null) return [];
    return list
        .map(
          (view) => UserServiceLogDto(
            id: view.id.toString(),
            date: view.date,
            serviceId: view.serviceId,
            price: view.price,
          ),
        )
        .toList();
  }
}
