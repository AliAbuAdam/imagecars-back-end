// ignore_for_file: annotate_overrides

part of 'user_service_log.dart';

extension UserServiceLogRepositories on Database {
  UserServiceLogRepository get userServiceLogs => UserServiceLogRepository._(this);
}

abstract class UserServiceLogRepository
    implements
        ModelRepository,
        KeyedModelRepositoryInsert<UserServiceLogInsertRequest>,
        ModelRepositoryUpdate<UserServiceLogUpdateRequest>,
        ModelRepositoryDelete<int> {
  factory UserServiceLogRepository._(Database db) = _UserServiceLogRepository;

  Future<UserServiceLogView?> queryUserServiceLog(int id);
  Future<List<UserServiceLogView>> queryUserServiceLogs([QueryParams? params]);
}

class _UserServiceLogRepository extends BaseRepository
    with
        KeyedRepositoryInsertMixin<UserServiceLogInsertRequest>,
        RepositoryUpdateMixin<UserServiceLogUpdateRequest>,
        RepositoryDeleteMixin<int>
    implements UserServiceLogRepository {
  _UserServiceLogRepository(super.db) : super(tableName: 'user_service_logs', keyName: 'id');

  @override
  Future<UserServiceLogView?> queryUserServiceLog(int id) {
    return queryOne(id, UserServiceLogViewQueryable());
  }

  @override
  Future<List<UserServiceLogView>> queryUserServiceLogs([QueryParams? params]) {
    return queryMany(UserServiceLogViewQueryable(), params);
  }

  @override
  Future<List<int>> insert(List<UserServiceLogInsertRequest> requests) async {
    if (requests.isEmpty) return [];
    var values = QueryValues();
    var rows = await db.query(
      'INSERT INTO "user_service_logs" ( "date", "service_id", "price", "user_id" )\n'
      'VALUES ${requests.map((r) => '( ${values.add(r.date)}:text, ${values.add(r.serviceId)}:text, ${values.add(r.price)}:float8, ${values.add(r.userId)}:int8 )').join(', ')}\n'
      'RETURNING "id"',
      values.values,
    );
    var result = rows.map<int>((r) => TextEncoder.i.decode(r.toColumnMap()['id'])).toList();

    return result;
  }

  @override
  Future<void> update(List<UserServiceLogUpdateRequest> requests) async {
    if (requests.isEmpty) return;
    var values = QueryValues();
    await db.query(
      'UPDATE "user_service_logs"\n'
      'SET "date" = COALESCE(UPDATED."date", "user_service_logs"."date"), "service_id" = COALESCE(UPDATED."service_id", "user_service_logs"."service_id"), "price" = COALESCE(UPDATED."price", "user_service_logs"."price"), "user_id" = COALESCE(UPDATED."user_id", "user_service_logs"."user_id")\n'
      'FROM ( VALUES ${requests.map((r) => '( ${values.add(r.id)}:int8::int8, ${values.add(r.date)}:text::text, ${values.add(r.serviceId)}:text::text, ${values.add(r.price)}:float8::float8, ${values.add(r.userId)}:int8::int8 )').join(', ')} )\n'
      'AS UPDATED("id", "date", "service_id", "price", "user_id")\n'
      'WHERE "user_service_logs"."id" = UPDATED."id"',
      values.values,
    );
  }
}

class UserServiceLogInsertRequest {
  UserServiceLogInsertRequest({
    required this.date,
    required this.serviceId,
    required this.price,
    this.userId,
  });

  final String date;
  final String serviceId;
  final double price;
  final int? userId;
}

class UserServiceLogUpdateRequest {
  UserServiceLogUpdateRequest({
    required this.id,
    this.date,
    this.serviceId,
    this.price,
    this.userId,
  });

  final int id;
  final String? date;
  final String? serviceId;
  final double? price;
  final int? userId;
}

class UserServiceLogViewQueryable extends KeyedViewQueryable<UserServiceLogView, int> {
  @override
  String get keyName => 'id';

  @override
  String encodeKey(int key) => TextEncoder.i.encode(key);

  @override
  String get query => 'SELECT "user_service_logs".*'
      'FROM "user_service_logs"';

  @override
  String get tableAlias => 'user_service_logs';

  @override
  UserServiceLogView decode(TypedMap map) => UserServiceLogView(
      id: map.get('id'),
      date: map.get('date'),
      serviceId: map.get('service_id'),
      price: map.get('price'));
}

class UserServiceLogView {
  UserServiceLogView({
    required this.id,
    required this.date,
    required this.serviceId,
    required this.price,
  });

  final int id;
  final String date;
  final String serviceId;
  final double price;
}
