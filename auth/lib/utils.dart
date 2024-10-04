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

  // Конвертация в FullUserDto
  static UserDto parseUser(FullUserView view) {
    return UserDto(
      id: view.id.toString(),
      username: view.username,
      email: view.email,
      gender: view.gender != null
          ? Gender.values.firstWhere((element) => element.name == view.gender)
          : null,
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
      // serviceLogs: parseListUserServiceLog(view.serviceLogs),
      preferences: view.preferences,
    );
  }

  // Конвертация в ShortUserDto
  static UserDto parseShortUser(ShortUserView view) => UserDto(
        id: view.id.toString(),
        username: view.username,
        email: view.email,
        gender: view.gender != null
            ? Gender.values.firstWhere((element) => element.name == view.gender)
            : null,
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
        // serviceLogs: parseListUserServiceLog(view.serviceLogs),
        preferences: view.preferences,
      );

  // Конвертация в ListUserDto
  static ListUserDto parseUsers(List<ShortUserView> listView) {
    try {
      print('Parse users test');
      return ListUserDto(users: [
        ...listView.map(
          (view) => UserDto(
            id: view.id.toString(),
            username: view.username,
            email: view.email,
            gender: view.gender != null
                ? Gender.values
                    .firstWhere((element) => element.name == view.gender)
                : null,
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
            // serviceLogs: parseListUserServiceLog(view.serviceLogs),
            preferences: view.preferences,
          ),
        )
      ]);
    } catch (e) {
      throw GrpcError.internal('Error in parseUsers ${e.toString()}');
    }
  }

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
