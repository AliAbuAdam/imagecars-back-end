import 'package:stormberry/stormberry.dart';
part 'app_info.schema.dart';

@Model()
abstract class AppInfo {
  @PrimaryKey()
  @AutoIncrement()
  int get id;
  String get lastVersion;
}
