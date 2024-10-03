import 'package:stormberry/stormberry.dart';
part 'work_case.schema.dart';

@Model()
abstract class WorkCase {
  @PrimaryKey()
  @AutoIncrement()
  int get id;
  String get title;
  String get carModel;
  int get serviceId;
  List<String> get photos;
  String? get video;
  String? get description;
  String? get masterName;
  double get workHoures;
  double get price;
}
