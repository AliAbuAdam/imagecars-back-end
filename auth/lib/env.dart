import 'dart:io';

abstract class Env {
  static int port = int.parse(Platform.environment['PORT']!);
  static int portPushSender =
      int.parse(Platform.environment['PUSH_SENDER_PORT']!);
  static String secretKey = Platform.environment['SECRET_KEY']!;
  static String dbSecretKey = Platform.environment['DB_SECRET_KEY']!;
  static int accessTokenTime =
      int.parse(Platform.environment['ACCESS_TOKEN_TIME']!);
  static int refreshTokenTime =
      int.parse(Platform.environment['REFRESH_TOKEN_TIME']!);
}
