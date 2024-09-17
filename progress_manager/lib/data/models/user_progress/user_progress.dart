import 'package:stormberry/stormberry.dart';
import '../service_log/user_service_log.dart';

part 'user_progress.schema.dart';

@Model()
abstract class UserProgress {
  // Main
  @PrimaryKey()
  int get userId;
  double get coins;
  String? get carModel;
  String? get vinCode;
  int? get yearOfManufacture;
  String? get gosNumber;
  List<UserServiceLog>? get serviceLogs;
  String? get preferences;
}
