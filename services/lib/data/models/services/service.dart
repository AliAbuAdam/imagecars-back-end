import 'package:stormberry/stormberry.dart';
part 'service.schema.dart';

@Model()
abstract class Service {
  @PrimaryKey()
  @AutoIncrement()
  int get id;
  String get title;
  String get shortDescription;
  String get description;
  List<String> get photos;
}
