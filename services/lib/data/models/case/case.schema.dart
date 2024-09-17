// ignore_for_file: annotate_overrides

part of 'case.dart';

extension CaseRepositories on Database {
  CaseRepository get cases => CaseRepository._(this);
}

abstract class CaseRepository
    implements
        ModelRepository,
        KeyedModelRepositoryInsert<CaseInsertRequest>,
        ModelRepositoryUpdate<CaseUpdateRequest>,
        ModelRepositoryDelete<int> {
  factory CaseRepository._(Database db) = _CaseRepository;

  Future<CaseView?> queryCase(int id);
  Future<List<CaseView>> queryCases([QueryParams? params]);
}

class _CaseRepository extends BaseRepository
    with
        KeyedRepositoryInsertMixin<CaseInsertRequest>,
        RepositoryUpdateMixin<CaseUpdateRequest>,
        RepositoryDeleteMixin<int>
    implements CaseRepository {
  _CaseRepository(super.db) : super(tableName: 'cases', keyName: 'id');

  @override
  Future<CaseView?> queryCase(int id) {
    return queryOne(id, CaseViewQueryable());
  }

  @override
  Future<List<CaseView>> queryCases([QueryParams? params]) {
    return queryMany(CaseViewQueryable(), params);
  }

  @override
  Future<List<int>> insert(List<CaseInsertRequest> requests) async {
    if (requests.isEmpty) return [];
    var values = QueryValues();
    var rows = await db.query(
      'INSERT INTO "cases" ( "title", "car_model", "service_id", "photos", "video", "work_houres", "price" )\n'
      'VALUES ${requests.map((r) => '( ${values.add(r.title)}:text, ${values.add(r.carModel)}:text, ${values.add(r.serviceId)}:text, ${values.add(r.photos)}:_text, ${values.add(r.video)}:text, ${values.add(r.workHoures)}:float8, ${values.add(r.price)}:float8 )').join(', ')}\n'
      'RETURNING "id"',
      values.values,
    );
    var result = rows.map<int>((r) => TextEncoder.i.decode(r.toColumnMap()['id'])).toList();

    return result;
  }

  @override
  Future<void> update(List<CaseUpdateRequest> requests) async {
    if (requests.isEmpty) return;
    var values = QueryValues();
    await db.query(
      'UPDATE "cases"\n'
      'SET "title" = COALESCE(UPDATED."title", "cases"."title"), "car_model" = COALESCE(UPDATED."car_model", "cases"."car_model"), "service_id" = COALESCE(UPDATED."service_id", "cases"."service_id"), "photos" = COALESCE(UPDATED."photos", "cases"."photos"), "video" = COALESCE(UPDATED."video", "cases"."video"), "work_houres" = COALESCE(UPDATED."work_houres", "cases"."work_houres"), "price" = COALESCE(UPDATED."price", "cases"."price")\n'
      'FROM ( VALUES ${requests.map((r) => '( ${values.add(r.id)}:int8::int8, ${values.add(r.title)}:text::text, ${values.add(r.carModel)}:text::text, ${values.add(r.serviceId)}:text::text, ${values.add(r.photos)}:_text::_text, ${values.add(r.video)}:text::text, ${values.add(r.workHoures)}:float8::float8, ${values.add(r.price)}:float8::float8 )').join(', ')} )\n'
      'AS UPDATED("id", "title", "car_model", "service_id", "photos", "video", "work_houres", "price")\n'
      'WHERE "cases"."id" = UPDATED."id"',
      values.values,
    );
  }
}

class CaseInsertRequest {
  CaseInsertRequest({
    required this.title,
    required this.carModel,
    required this.serviceId,
    required this.photos,
    this.video,
    required this.workHoures,
    required this.price,
  });

  final String title;
  final String carModel;
  final String serviceId;
  final List<String> photos;
  final String? video;
  final double workHoures;
  final double price;
}

class CaseUpdateRequest {
  CaseUpdateRequest({
    required this.id,
    this.title,
    this.carModel,
    this.serviceId,
    this.photos,
    this.video,
    this.workHoures,
    this.price,
  });

  final int id;
  final String? title;
  final String? carModel;
  final String? serviceId;
  final List<String>? photos;
  final String? video;
  final double? workHoures;
  final double? price;
}

class CaseViewQueryable extends KeyedViewQueryable<CaseView, int> {
  @override
  String get keyName => 'id';

  @override
  String encodeKey(int key) => TextEncoder.i.encode(key);

  @override
  String get query => 'SELECT "cases".*'
      'FROM "cases"';

  @override
  String get tableAlias => 'cases';

  @override
  CaseView decode(TypedMap map) => CaseView(
      id: map.get('id'),
      title: map.get('title'),
      carModel: map.get('car_model'),
      serviceId: map.get('service_id'),
      photos: map.getListOpt('photos') ?? const [],
      video: map.getOpt('video'),
      workHoures: map.get('work_houres'),
      price: map.get('price'));
}

class CaseView {
  CaseView({
    required this.id,
    required this.title,
    required this.carModel,
    required this.serviceId,
    required this.photos,
    this.video,
    required this.workHoures,
    required this.price,
  });

  final int id;
  final String title;
  final String carModel;
  final String serviceId;
  final List<String> photos;
  final String? video;
  final double workHoures;
  final double price;
}
