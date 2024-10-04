// ignore_for_file: annotate_overrides

part of 'user.dart';

extension UserRepositories on Database {
  UserRepository get users => UserRepository._(this);
}

abstract class UserRepository
    implements
        ModelRepository,
        KeyedModelRepositoryInsert<UserInsertRequest>,
        ModelRepositoryUpdate<UserUpdateRequest>,
        ModelRepositoryDelete<int> {
  factory UserRepository._(Database db) = _UserRepository;

  Future<ShortUserView?> queryShortView(int id);
  Future<List<ShortUserView>> queryShortViews([QueryParams? params]);
  Future<FullUserView?> queryFullView(int id);
  Future<List<FullUserView>> queryFullViews([QueryParams? params]);
}

class _UserRepository extends BaseRepository
    with
        KeyedRepositoryInsertMixin<UserInsertRequest>,
        RepositoryUpdateMixin<UserUpdateRequest>,
        RepositoryDeleteMixin<int>
    implements UserRepository {
  _UserRepository(super.db) : super(tableName: 'users', keyName: 'id');

  @override
  Future<ShortUserView?> queryShortView(int id) {
    return queryOne(id, ShortUserViewQueryable());
  }

  @override
  Future<List<ShortUserView>> queryShortViews([QueryParams? params]) {
    return queryMany(ShortUserViewQueryable(), params);
  }

  @override
  Future<FullUserView?> queryFullView(int id) {
    return queryOne(id, FullUserViewQueryable());
  }

  @override
  Future<List<FullUserView>> queryFullViews([QueryParams? params]) {
    return queryMany(FullUserViewQueryable(), params);
  }

  @override
  Future<List<int>> insert(List<UserInsertRequest> requests) async {
    if (requests.isEmpty) return [];
    var values = QueryValues();
    var rows = await db.query(
      'INSERT INTO "users" ( "username", "coins", "car_model", "vin_code", "year_of_manufacture", "gos_number", "preferences", "email", "gender", "name", "telegram", "phone", "register_date", "group_id", "code_word" )\n'
      'VALUES ${requests.map((r) => '( ${values.add(r.username)}:text, ${values.add(r.coins)}:float8, ${values.add(r.carModel)}:text, ${values.add(r.vinCode)}:text, ${values.add(r.yearOfManufacture)}:int8, ${values.add(r.gosNumber)}:text, ${values.add(r.preferences)}:text, ${values.add(r.email)}:text, ${values.add(r.gender)}:text, ${values.add(r.name)}:text, ${values.add(r.telegram)}:text, ${values.add(r.phone)}:text, ${values.add(r.registerDate)}:text, ${values.add(r.groupId)}:int8, ${values.add(r.codeWord)}:text )').join(', ')}\n'
      'RETURNING "id"',
      values.values,
    );
    var result = rows.map<int>((r) => TextEncoder.i.decode(r.toColumnMap()['id'])).toList();

    return result;
  }

  @override
  Future<void> update(List<UserUpdateRequest> requests) async {
    if (requests.isEmpty) return;
    var values = QueryValues();
    await db.query(
      'UPDATE "users"\n'
      'SET "username" = COALESCE(UPDATED."username", "users"."username"), "coins" = COALESCE(UPDATED."coins", "users"."coins"), "car_model" = COALESCE(UPDATED."car_model", "users"."car_model"), "vin_code" = COALESCE(UPDATED."vin_code", "users"."vin_code"), "year_of_manufacture" = COALESCE(UPDATED."year_of_manufacture", "users"."year_of_manufacture"), "gos_number" = COALESCE(UPDATED."gos_number", "users"."gos_number"), "preferences" = COALESCE(UPDATED."preferences", "users"."preferences"), "email" = COALESCE(UPDATED."email", "users"."email"), "gender" = COALESCE(UPDATED."gender", "users"."gender"), "name" = COALESCE(UPDATED."name", "users"."name"), "telegram" = COALESCE(UPDATED."telegram", "users"."telegram"), "phone" = COALESCE(UPDATED."phone", "users"."phone"), "register_date" = COALESCE(UPDATED."register_date", "users"."register_date"), "group_id" = COALESCE(UPDATED."group_id", "users"."group_id"), "code_word" = COALESCE(UPDATED."code_word", "users"."code_word")\n'
      'FROM ( VALUES ${requests.map((r) => '( ${values.add(r.id)}:int8::int8, ${values.add(r.username)}:text::text, ${values.add(r.coins)}:float8::float8, ${values.add(r.carModel)}:text::text, ${values.add(r.vinCode)}:text::text, ${values.add(r.yearOfManufacture)}:int8::int8, ${values.add(r.gosNumber)}:text::text, ${values.add(r.preferences)}:text::text, ${values.add(r.email)}:text::text, ${values.add(r.gender)}:text::text, ${values.add(r.name)}:text::text, ${values.add(r.telegram)}:text::text, ${values.add(r.phone)}:text::text, ${values.add(r.registerDate)}:text::text, ${values.add(r.groupId)}:int8::int8, ${values.add(r.codeWord)}:text::text )').join(', ')} )\n'
      'AS UPDATED("id", "username", "coins", "car_model", "vin_code", "year_of_manufacture", "gos_number", "preferences", "email", "gender", "name", "telegram", "phone", "register_date", "group_id", "code_word")\n'
      'WHERE "users"."id" = UPDATED."id"',
      values.values,
    );
  }
}

class UserInsertRequest {
  UserInsertRequest({
    required this.username,
    required this.coins,
    this.carModel,
    this.vinCode,
    this.yearOfManufacture,
    this.gosNumber,
    this.preferences,
    required this.email,
    this.gender,
    this.name,
    this.telegram,
    this.phone,
    this.registerDate,
    required this.groupId,
    this.codeWord,
  });

  final String username;
  final double coins;
  final String? carModel;
  final String? vinCode;
  final int? yearOfManufacture;
  final String? gosNumber;
  final String? preferences;
  final String email;
  final String? gender;
  final String? name;
  final String? telegram;
  final String? phone;
  final String? registerDate;
  final int groupId;
  final String? codeWord;
}

class UserUpdateRequest {
  UserUpdateRequest({
    required this.id,
    this.username,
    this.coins,
    this.carModel,
    this.vinCode,
    this.yearOfManufacture,
    this.gosNumber,
    this.preferences,
    this.email,
    this.gender,
    this.name,
    this.telegram,
    this.phone,
    this.registerDate,
    this.groupId,
    this.codeWord,
  });

  final int id;
  final String? username;
  final double? coins;
  final String? carModel;
  final String? vinCode;
  final int? yearOfManufacture;
  final String? gosNumber;
  final String? preferences;
  final String? email;
  final String? gender;
  final String? name;
  final String? telegram;
  final String? phone;
  final String? registerDate;
  final int? groupId;
  final String? codeWord;
}

class ShortUserViewQueryable extends KeyedViewQueryable<ShortUserView, int> {
  @override
  String get keyName => 'id';

  @override
  String encodeKey(int key) => TextEncoder.i.encode(key);

  @override
  String get query => 'SELECT "users".*, "serviceLogs"."data" as "serviceLogs"'
      'FROM "users"'
      'LEFT JOIN ('
      '  SELECT "user_service_logs"."user_id",'
      '    to_jsonb(array_agg("user_service_logs".*)) as data'
      '  FROM (${UserServiceLogViewQueryable().query}) "user_service_logs"'
      '  GROUP BY "user_service_logs"."user_id"'
      ') "serviceLogs"'
      'ON "users"."id" = "serviceLogs"."user_id"';

  @override
  String get tableAlias => 'users';

  @override
  ShortUserView decode(TypedMap map) => ShortUserView(
      id: map.get('id'),
      username: map.get('username'),
      coins: map.get('coins'),
      carModel: map.getOpt('car_model'),
      vinCode: map.getOpt('vin_code'),
      yearOfManufacture: map.getOpt('year_of_manufacture'),
      gosNumber: map.getOpt('gos_number'),
      serviceLogs: map.getListOpt('serviceLogs', UserServiceLogViewQueryable().decoder),
      preferences: map.getOpt('preferences'),
      email: map.get('email'),
      gender: map.getOpt('gender'),
      name: map.getOpt('name'),
      telegram: map.getOpt('telegram'),
      phone: map.getOpt('phone'),
      registerDate: map.getOpt('register_date'),
      groupId: map.get('group_id'),
      codeWord: map.getOpt('code_word'));
}

class ShortUserView {
  ShortUserView({
    required this.id,
    required this.username,
    required this.coins,
    this.carModel,
    this.vinCode,
    this.yearOfManufacture,
    this.gosNumber,
    this.serviceLogs,
    this.preferences,
    required this.email,
    this.gender,
    this.name,
    this.telegram,
    this.phone,
    this.registerDate,
    required this.groupId,
    this.codeWord,
  });

  final int id;
  final String username;
  final double coins;
  final String? carModel;
  final String? vinCode;
  final int? yearOfManufacture;
  final String? gosNumber;
  final List<UserServiceLogView>? serviceLogs;
  final String? preferences;
  final String email;
  final String? gender;
  final String? name;
  final String? telegram;
  final String? phone;
  final String? registerDate;
  final int groupId;
  final String? codeWord;
}

class FullUserViewQueryable extends KeyedViewQueryable<FullUserView, int> {
  @override
  String get keyName => 'id';

  @override
  String encodeKey(int key) => TextEncoder.i.encode(key);

  @override
  String get query => 'SELECT "users".*, "serviceLogs"."data" as "serviceLogs"'
      'FROM "users"'
      'LEFT JOIN ('
      '  SELECT "user_service_logs"."user_id",'
      '    to_jsonb(array_agg("user_service_logs".*)) as data'
      '  FROM (${UserServiceLogViewQueryable().query}) "user_service_logs"'
      '  GROUP BY "user_service_logs"."user_id"'
      ') "serviceLogs"'
      'ON "users"."id" = "serviceLogs"."user_id"';

  @override
  String get tableAlias => 'users';

  @override
  FullUserView decode(TypedMap map) => FullUserView(
      id: map.get('id'),
      username: map.get('username'),
      coins: map.get('coins'),
      carModel: map.getOpt('car_model'),
      vinCode: map.getOpt('vin_code'),
      yearOfManufacture: map.getOpt('year_of_manufacture'),
      gosNumber: map.getOpt('gos_number'),
      serviceLogs: map.getListOpt('serviceLogs', UserServiceLogViewQueryable().decoder),
      preferences: map.getOpt('preferences'),
      email: map.get('email'),
      gender: map.getOpt('gender'),
      name: map.getOpt('name'),
      telegram: map.getOpt('telegram'),
      phone: map.getOpt('phone'),
      registerDate: map.getOpt('register_date'),
      groupId: map.get('group_id'),
      codeWord: map.getOpt('code_word'));
}

class FullUserView {
  FullUserView({
    required this.id,
    required this.username,
    required this.coins,
    this.carModel,
    this.vinCode,
    this.yearOfManufacture,
    this.gosNumber,
    this.serviceLogs,
    this.preferences,
    required this.email,
    this.gender,
    this.name,
    this.telegram,
    this.phone,
    this.registerDate,
    required this.groupId,
    this.codeWord,
  });

  final int id;
  final String username;
  final double coins;
  final String? carModel;
  final String? vinCode;
  final int? yearOfManufacture;
  final String? gosNumber;
  final List<UserServiceLogView>? serviceLogs;
  final String? preferences;
  final String email;
  final String? gender;
  final String? name;
  final String? telegram;
  final String? phone;
  final String? registerDate;
  final int groupId;
  final String? codeWord;
}
