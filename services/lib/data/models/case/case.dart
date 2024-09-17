import 'package:stormberry/stormberry.dart';
part 'case.schema.dart';

@Model()
abstract class Case {
  @PrimaryKey()
  @AutoIncrement()
  int get id;
  String get title;
  String get carModel;
  String get serviceId;
  List<String> get photos;
  String? get video;
  double get workHoures;
  double get price;
}
