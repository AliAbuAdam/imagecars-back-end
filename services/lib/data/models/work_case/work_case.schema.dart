// ignore_for_file: annotate_overrides

part of 'work_case.dart';

extension WorkCaseRepositories on Database {
  WorkCaseRepository get workCases => WorkCaseRepository._(this);
}

abstract class WorkCaseRepository
    implements
        ModelRepository,
        KeyedModelRepositoryInsert<WorkCaseInsertRequest>,
        ModelRepositoryUpdate<WorkCaseUpdateRequest>,
        ModelRepositoryDelete<int> {
  factory WorkCaseRepository._(Database db) = _WorkCaseRepository;

  Future<WorkCaseView?> queryWorkCase(int id);
  Future<List<WorkCaseView>> queryWorkCases([QueryParams? params]);
}

class _WorkCaseRepository extends BaseRepository
    with
        KeyedRepositoryInsertMixin<WorkCaseInsertRequest>,
        RepositoryUpdateMixin<WorkCaseUpdateRequest>,
        RepositoryDeleteMixin<int>
    implements WorkCaseRepository {
  _WorkCaseRepository(super.db) : super(tableName: 'work_cases', keyName: 'id');

  @override
  Future<WorkCaseView?> queryWorkCase(int id) {
    return queryOne(id, WorkCaseViewQueryable());
  }

  @override
  Future<List<WorkCaseView>> queryWorkCases([QueryParams? params]) {
    return queryMany(WorkCaseViewQueryable(), params);
  }

  @override
  Future<List<int>> insert(List<WorkCaseInsertRequest> requests) async {
    if (requests.isEmpty) return [];
    var values = QueryValues();
    var rows = await db.query(
      'INSERT INTO "work_cases" ( "title", "car_model", "service_ids", "photos", "video", "description", "master_name", "work_houres", "price" )\n'
      'VALUES ${requests.map((r) => '( ${values.add(r.title)}:text, ${values.add(r.carModel)}:text, ${values.add(r.serviceIds)}:_int8, ${values.add(r.photos)}:_text, ${values.add(r.video)}:text, ${values.add(r.description)}:text, ${values.add(r.masterName)}:text, ${values.add(r.workHoures)}:float8, ${values.add(r.price)}:float8 )').join(', ')}\n'
      'RETURNING "id"',
      values.values,
    );
    var result = rows.map<int>((r) => TextEncoder.i.decode(r.toColumnMap()['id'])).toList();

    return result;
  }

  @override
  Future<void> update(List<WorkCaseUpdateRequest> requests) async {
    if (requests.isEmpty) return;
    var values = QueryValues();
    await db.query(
      'UPDATE "work_cases"\n'
      'SET "title" = COALESCE(UPDATED."title", "work_cases"."title"), "car_model" = COALESCE(UPDATED."car_model", "work_cases"."car_model"), "service_ids" = COALESCE(UPDATED."service_ids", "work_cases"."service_ids"), "photos" = COALESCE(UPDATED."photos", "work_cases"."photos"), "video" = COALESCE(UPDATED."video", "work_cases"."video"), "description" = COALESCE(UPDATED."description", "work_cases"."description"), "master_name" = COALESCE(UPDATED."master_name", "work_cases"."master_name"), "work_houres" = COALESCE(UPDATED."work_houres", "work_cases"."work_houres"), "price" = COALESCE(UPDATED."price", "work_cases"."price")\n'
      'FROM ( VALUES ${requests.map((r) => '( ${values.add(r.id)}:int8::int8, ${values.add(r.title)}:text::text, ${values.add(r.carModel)}:text::text, ${values.add(r.serviceIds)}:_int8::_int8, ${values.add(r.photos)}:_text::_text, ${values.add(r.video)}:text::text, ${values.add(r.description)}:text::text, ${values.add(r.masterName)}:text::text, ${values.add(r.workHoures)}:float8::float8, ${values.add(r.price)}:float8::float8 )').join(', ')} )\n'
      'AS UPDATED("id", "title", "car_model", "service_ids", "photos", "video", "description", "master_name", "work_houres", "price")\n'
      'WHERE "work_cases"."id" = UPDATED."id"',
      values.values,
    );
  }
}

class WorkCaseInsertRequest {
  WorkCaseInsertRequest({
    required this.title,
    required this.carModel,
    required this.serviceIds,
    required this.photos,
    this.video,
    this.description,
    this.masterName,
    required this.workHoures,
    required this.price,
  });

  final String title;
  final String carModel;
  final List<int> serviceIds;
  final List<String> photos;
  final String? video;
  final String? description;
  final String? masterName;
  final double workHoures;
  final double price;
}

class WorkCaseUpdateRequest {
  WorkCaseUpdateRequest({
    required this.id,
    this.title,
    this.carModel,
    this.serviceIds,
    this.photos,
    this.video,
    this.description,
    this.masterName,
    this.workHoures,
    this.price,
  });

  final int id;
  final String? title;
  final String? carModel;
  final List<int>? serviceIds;
  final List<String>? photos;
  final String? video;
  final String? description;
  final String? masterName;
  final double? workHoures;
  final double? price;
}

class WorkCaseViewQueryable extends KeyedViewQueryable<WorkCaseView, int> {
  @override
  String get keyName => 'id';

  @override
  String encodeKey(int key) => TextEncoder.i.encode(key);

  @override
  String get query => 'SELECT "work_cases".*'
      'FROM "work_cases"';

  @override
  String get tableAlias => 'work_cases';

  @override
  WorkCaseView decode(TypedMap map) => WorkCaseView(
      id: map.get('id'),
      title: map.get('title'),
      carModel: map.get('car_model'),
      serviceIds: map.getListOpt('service_ids') ?? const [],
      photos: map.getListOpt('photos') ?? const [],
      video: map.getOpt('video'),
      description: map.getOpt('description'),
      masterName: map.getOpt('master_name'),
      workHoures: map.get('work_houres'),
      price: map.get('price'));
}

class WorkCaseView {
  WorkCaseView({
    required this.id,
    required this.title,
    required this.carModel,
    required this.serviceIds,
    required this.photos,
    this.video,
    this.description,
    this.masterName,
    required this.workHoures,
    required this.price,
  });

  final int id;
  final String title;
  final String carModel;
  final List<int> serviceIds;
  final List<String> photos;
  final String? video;
  final String? description;
  final String? masterName;
  final double workHoures;
  final double price;
}
