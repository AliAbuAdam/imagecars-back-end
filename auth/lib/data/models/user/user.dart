import 'package:stormberry/stormberry.dart';
part 'user.schema.dart';

@Model(
  views: [#Short, #Full],
  indexes: [
    TableIndex(name: 'username', columns: ['username'], unique: true),
    TableIndex(name: 'email', columns: ['email'], unique: true),
  ],
)
abstract class User {
  @PrimaryKey()
  @AutoIncrement()
  int get id;
  String get username;
  String get email;
  String? get gender;
  String? get name;
  String? get telegram;
  String? get phone;
  String? get registerDate;
  int get groupId;
  String? get codeWord;

  double get coins;
  String? get carModel;
  String? get vinCode;
  int? get yearOfManufacture;
  String? get gosNumber;
  // List<UserServiceLog>? get serviceLogs;
  String? get preferences;
}
