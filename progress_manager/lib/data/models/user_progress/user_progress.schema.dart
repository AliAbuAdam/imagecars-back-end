// ignore_for_file: annotate_overrides

part of 'user_progress.dart';

extension UserProgressRepositories on Database {
  UserProgressRepository get userProgresses => UserProgressRepository._(this);
}

abstract class UserProgressRepository
    implements
        ModelRepository,
        ModelRepositoryInsert<UserProgressInsertRequest>,
        ModelRepositoryUpdate<UserProgressUpdateRequest>,
        ModelRepositoryDelete<int> {
  factory UserProgressRepository._(Database db) = _UserProgressRepository;

  Future<UserProgressView?> queryUserProgress(int userId);
  Future<List<UserProgressView>> queryUserProgresses([QueryParams? params]);
}

class _UserProgressRepository extends BaseRepository
    with
        RepositoryInsertMixin<UserProgressInsertRequest>,
        RepositoryUpdateMixin<UserProgressUpdateRequest>,
        RepositoryDeleteMixin<int>
    implements UserProgressRepository {
  _UserProgressRepository(super.db) : super(tableName: 'user_progresses', keyName: 'user_id');

  @override
  Future<UserProgressView?> queryUserProgress(int userId) {
    return queryOne(userId, UserProgressViewQueryable());
  }

  @override
  Future<List<UserProgressView>> queryUserProgresses([QueryParams? params]) {
    return queryMany(UserProgressViewQueryable(), params);
  }

  @override
  Future<void> insert(List<UserProgressInsertRequest> requests) async {
    if (requests.isEmpty) return;
    var values = QueryValues();
    await db.query(
      'INSERT INTO "user_progresses" ( "user_id", "coins", "car_model", "vin_code", "year_of_manufacture", "gos_number", "preferences" )\n'
      'VALUES ${requests.map((r) => '( ${values.add(r.userId)}:int8, ${values.add(r.coins)}:float8, ${values.add(r.carModel)}:text, ${values.add(r.vinCode)}:text, ${values.add(r.yearOfManufacture)}:int8, ${values.add(r.gosNumber)}:text, ${values.add(r.preferences)}:text )').join(', ')}\n',
      values.values,
    );
  }

  @override
  Future<void> update(List<UserProgressUpdateRequest> requests) async {
    if (requests.isEmpty) return;
    var values = QueryValues();
    await db.query(
      'UPDATE "user_progresses"\n'
      'SET "coins" = COALESCE(UPDATED."coins", "user_progresses"."coins"), "car_model" = COALESCE(UPDATED."car_model", "user_progresses"."car_model"), "vin_code" = COALESCE(UPDATED."vin_code", "user_progresses"."vin_code"), "year_of_manufacture" = COALESCE(UPDATED."year_of_manufacture", "user_progresses"."year_of_manufacture"), "gos_number" = COALESCE(UPDATED."gos_number", "user_progresses"."gos_number"), "preferences" = COALESCE(UPDATED."preferences", "user_progresses"."preferences")\n'
      'FROM ( VALUES ${requests.map((r) => '( ${values.add(r.userId)}:int8::int8, ${values.add(r.coins)}:float8::float8, ${values.add(r.carModel)}:text::text, ${values.add(r.vinCode)}:text::text, ${values.add(r.yearOfManufacture)}:int8::int8, ${values.add(r.gosNumber)}:text::text, ${values.add(r.preferences)}:text::text )').join(', ')} )\n'
      'AS UPDATED("user_id", "coins", "car_model", "vin_code", "year_of_manufacture", "gos_number", "preferences")\n'
      'WHERE "user_progresses"."user_id" = UPDATED."user_id"',
      values.values,
    );
  }
}

class UserProgressInsertRequest {
  UserProgressInsertRequest({
    required this.userId,
    required this.coins,
    this.carModel,
    this.vinCode,
    this.yearOfManufacture,
    this.gosNumber,
    this.preferences,
  });

  final int userId;
  final double coins;
  final String? carModel;
  final String? vinCode;
  final int? yearOfManufacture;
  final String? gosNumber;
  final String? preferences;
}

class UserProgressUpdateRequest {
  UserProgressUpdateRequest({
    required this.userId,
    this.coins,
    this.carModel,
    this.vinCode,
    this.yearOfManufacture,
    this.gosNumber,
    this.preferences,
  });

  final int userId;
  final double? coins;
  final String? carModel;
  final String? vinCode;
  final int? yearOfManufacture;
  final String? gosNumber;
  final String? preferences;
}

class UserProgressViewQueryable extends KeyedViewQueryable<UserProgressView, int> {
  @override
  String get keyName => 'user_id';

  @override
  String encodeKey(int key) => TextEncoder.i.encode(key);

  @override
  String get query => 'SELECT "user_progresses".*, "serviceLogs"."data" as "serviceLogs"'
      'FROM "user_progresses"'
      'LEFT JOIN ('
      '  SELECT "user_service_logs"."user_progress_user_id",'
      '    to_jsonb(array_agg("user_service_logs".*)) as data'
      '  FROM (${UserServiceLogViewQueryable().query}) "user_service_logs"'
      '  GROUP BY "user_service_logs"."user_progress_user_id"'
      ') "serviceLogs"'
      'ON "user_progresses"."user_id" = "serviceLogs"."user_progress_user_id"';

  @override
  String get tableAlias => 'user_progresses';

  @override
  UserProgressView decode(TypedMap map) => UserProgressView(
      userId: map.get('user_id'),
      coins: map.get('coins'),
      carModel: map.getOpt('car_model'),
      vinCode: map.getOpt('vin_code'),
      yearOfManufacture: map.getOpt('year_of_manufacture'),
      gosNumber: map.getOpt('gos_number'),
      serviceLogs: map.getListOpt('serviceLogs', UserServiceLogViewQueryable().decoder),
      preferences: map.getOpt('preferences'));
}

class UserProgressView {
  UserProgressView({
    required this.userId,
    required this.coins,
    this.carModel,
    this.vinCode,
    this.yearOfManufacture,
    this.gosNumber,
    this.serviceLogs,
    this.preferences,
  });

  final int userId;
  final double coins;
  final String? carModel;
  final String? vinCode;
  final int? yearOfManufacture;
  final String? gosNumber;
  final List<UserServiceLogView>? serviceLogs;
  final String? preferences;
}
