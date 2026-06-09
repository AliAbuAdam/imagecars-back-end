import 'dart:io';

abstract class Env {
  static int port = int.parse(Platform.environment['PORT']!);
  static String secretKey = Platform.environment['SECRET_KEY']!;

  // Адрес сервиса auth для проверки роли (groupId) запрашивающего пользователя.
  static String authHost = Platform.environment['AUTH_HOST'] ?? 'auth';
  static int authPort = int.parse(Platform.environment['AUTH_PORT']!);

  // groupId администратора (то же, что для GM-функций).
  static const int adminGroupId = 88;
}
