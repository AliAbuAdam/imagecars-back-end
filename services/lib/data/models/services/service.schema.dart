// ignore_for_file: annotate_overrides

part of 'service.dart';

extension ServiceRepositories on Database {
  ServiceRepository get services => ServiceRepository._(this);
}

abstract class ServiceRepository
    implements
        ModelRepository,
        KeyedModelRepositoryInsert<ServiceInsertRequest>,
        ModelRepositoryUpdate<ServiceUpdateRequest>,
        ModelRepositoryDelete<int> {
  factory ServiceRepository._(Database db) = _ServiceRepository;

  Future<ServiceView?> queryService(int id);
  Future<List<ServiceView>> queryServices([QueryParams? params]);
}

class _ServiceRepository extends BaseRepository
    with
        KeyedRepositoryInsertMixin<ServiceInsertRequest>,
        RepositoryUpdateMixin<ServiceUpdateRequest>,
        RepositoryDeleteMixin<int>
    implements ServiceRepository {
  _ServiceRepository(super.db) : super(tableName: 'services', keyName: 'id');

  @override
  Future<ServiceView?> queryService(int id) {
    return queryOne(id, ServiceViewQueryable());
  }

  @override
  Future<List<ServiceView>> queryServices([QueryParams? params]) {
    return queryMany(ServiceViewQueryable(), params);
  }

  @override
  Future<List<int>> insert(List<ServiceInsertRequest> requests) async {
    if (requests.isEmpty) return [];
    var values = QueryValues();
    var rows = await db.query(
      'INSERT INTO "services" ( "title", "short_description", "description", "photos" )\n'
      'VALUES ${requests.map((r) => '( ${values.add(r.title)}:text, ${values.add(r.shortDescription)}:text, ${values.add(r.description)}:text, ${values.add(r.photos)}:_text )').join(', ')}\n'
      'RETURNING "id"',
      values.values,
    );
    var result = rows.map<int>((r) => TextEncoder.i.decode(r.toColumnMap()['id'])).toList();

    return result;
  }

  @override
  Future<void> update(List<ServiceUpdateRequest> requests) async {
    if (requests.isEmpty) return;
    var values = QueryValues();
    await db.query(
      'UPDATE "services"\n'
      'SET "title" = COALESCE(UPDATED."title", "services"."title"), "short_description" = COALESCE(UPDATED."short_description", "services"."short_description"), "description" = COALESCE(UPDATED."description", "services"."description"), "photos" = COALESCE(UPDATED."photos", "services"."photos")\n'
      'FROM ( VALUES ${requests.map((r) => '( ${values.add(r.id)}:int8::int8, ${values.add(r.title)}:text::text, ${values.add(r.shortDescription)}:text::text, ${values.add(r.description)}:text::text, ${values.add(r.photos)}:_text::_text )').join(', ')} )\n'
      'AS UPDATED("id", "title", "short_description", "description", "photos")\n'
      'WHERE "services"."id" = UPDATED."id"',
      values.values,
    );
  }
}

class ServiceInsertRequest {
  ServiceInsertRequest({
    required this.title,
    required this.shortDescription,
    required this.description,
    required this.photos,
  });

  final String title;
  final String shortDescription;
  final String description;
  final List<String> photos;
}

class ServiceUpdateRequest {
  ServiceUpdateRequest({
    required this.id,
    this.title,
    this.shortDescription,
    this.description,
    this.photos,
  });

  final int id;
  final String? title;
  final String? shortDescription;
  final String? description;
  final List<String>? photos;
}

class ServiceViewQueryable extends KeyedViewQueryable<ServiceView, int> {
  @override
  String get keyName => 'id';

  @override
  String encodeKey(int key) => TextEncoder.i.encode(key);

  @override
  String get query => 'SELECT "services".*'
      'FROM "services"';

  @override
  String get tableAlias => 'services';

  @override
  ServiceView decode(TypedMap map) => ServiceView(
      id: map.get('id'),
      title: map.get('title'),
      shortDescription: map.get('short_description'),
      description: map.get('description'),
      photos: map.getListOpt('photos') ?? const []);
}

class ServiceView {
  ServiceView({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.description,
    required this.photos,
  });

  final int id;
  final String title;
  final String shortDescription;
  final String description;
  final List<String> photos;
}
