import 'package:stormberry/stormberry.dart';
part 'user_service_log.schema.dart';

@Model()
abstract class UserServiceLog {
  // Main
  @PrimaryKey()
  @AutoIncrement()
  int get id;
  String get date;
  String get serviceId;
  double get price;
}
