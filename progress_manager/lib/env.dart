import 'dart:io';

abstract class Env {
  static int port = int.parse(Platform.environment['PORT']!);
  static int portservices = int.parse(Platform.environment['services_PORT']!);
  static int portPrayers = int.parse(Platform.environment['PRAYERS_PORT']!);
  static String secretKey = Platform.environment['SECRET_KEY']!;
}
