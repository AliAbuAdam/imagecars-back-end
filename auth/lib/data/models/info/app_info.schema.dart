// ignore_for_file: annotate_overrides

part of 'app_info.dart';

extension AppInfoRepositories on Database {
  AppInfoRepository get appInfos => AppInfoRepository._(this);
}

abstract class AppInfoRepository
    implements
        ModelRepository,
        KeyedModelRepositoryInsert<AppInfoInsertRequest>,
        ModelRepositoryUpdate<AppInfoUpdateRequest>,
        ModelRepositoryDelete<int> {
  factory AppInfoRepository._(Database db) = _AppInfoRepository;

  Future<AppInfoView?> queryAppInfo(int id);
  Future<List<AppInfoView>> queryAppInfos([QueryParams? params]);
}

class _AppInfoRepository extends BaseRepository
    with
        KeyedRepositoryInsertMixin<AppInfoInsertRequest>,
        RepositoryUpdateMixin<AppInfoUpdateRequest>,
        RepositoryDeleteMixin<int>
    implements AppInfoRepository {
  _AppInfoRepository(super.db) : super(tableName: 'app_infos', keyName: 'id');

  @override
  Future<AppInfoView?> queryAppInfo(int id) {
    return queryOne(id, AppInfoViewQueryable());
  }

  @override
  Future<List<AppInfoView>> queryAppInfos([QueryParams? params]) {
    return queryMany(AppInfoViewQueryable(), params);
  }

  @override
  Future<List<int>> insert(List<AppInfoInsertRequest> requests) async {
    if (requests.isEmpty) return [];
    var values = QueryValues();
    var rows = await db.query(
      'INSERT INTO "app_infos" ( "last_version" )\n'
      'VALUES ${requests.map((r) => '( ${values.add(r.lastVersion)}:text )').join(', ')}\n'
      'RETURNING "id"',
      values.values,
    );
    var result = rows.map<int>((r) => TextEncoder.i.decode(r.toColumnMap()['id'])).toList();

    return result;
  }

  @override
  Future<void> update(List<AppInfoUpdateRequest> requests) async {
    if (requests.isEmpty) return;
    var values = QueryValues();
    await db.query(
      'UPDATE "app_infos"\n'
      'SET "last_version" = COALESCE(UPDATED."last_version", "app_infos"."last_version")\n'
      'FROM ( VALUES ${requests.map((r) => '( ${values.add(r.id)}:int8::int8, ${values.add(r.lastVersion)}:text::text )').join(', ')} )\n'
      'AS UPDATED("id", "last_version")\n'
      'WHERE "app_infos"."id" = UPDATED."id"',
      values.values,
    );
  }
}

class AppInfoInsertRequest {
  AppInfoInsertRequest({
    required this.lastVersion,
  });

  final String lastVersion;
}

class AppInfoUpdateRequest {
  AppInfoUpdateRequest({
    required this.id,
    this.lastVersion,
  });

  final int id;
  final String? lastVersion;
}

class AppInfoViewQueryable extends KeyedViewQueryable<AppInfoView, int> {
  @override
  String get keyName => 'id';

  @override
  String encodeKey(int key) => TextEncoder.i.encode(key);

  @override
  String get query => 'SELECT "app_infos".*'
      'FROM "app_infos"';

  @override
  String get tableAlias => 'app_infos';

  @override
  AppInfoView decode(TypedMap map) =>
      AppInfoView(id: map.get('id'), lastVersion: map.get('last_version'));
}

class AppInfoView {
  AppInfoView({
    required this.id,
    required this.lastVersion,
  });

  final int id;
  final String lastVersion;
}
