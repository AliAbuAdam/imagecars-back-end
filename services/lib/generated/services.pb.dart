//
//  Generated code. Do not modify.
//  source: services.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ServiceDto extends $pb.GeneratedMessage {
  factory ServiceDto({
    $core.String? id,
    $core.String? title,
    $core.String? shortDescription,
    $core.String? description,
    $core.Iterable<$core.String>? photos,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (shortDescription != null) {
      $result.shortDescription = shortDescription;
    }
    if (description != null) {
      $result.description = description;
    }
    if (photos != null) {
      $result.photos.addAll(photos);
    }
    return $result;
  }
  ServiceDto._() : super();
  factory ServiceDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceDto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'shortDescription')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..pPS(5, _omitFieldNames ? '' : 'photos')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceDto clone() => ServiceDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceDto copyWith(void Function(ServiceDto) updates) => super.copyWith((message) => updates(message as ServiceDto)) as ServiceDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceDto create() => ServiceDto._();
  ServiceDto createEmptyInstance() => create();
  static $pb.PbList<ServiceDto> createRepeated() => $pb.PbList<ServiceDto>();
  @$core.pragma('dart2js:noInline')
  static ServiceDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceDto>(create);
  static ServiceDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get shortDescription => $_getSZ(2);
  @$pb.TagNumber(3)
  set shortDescription($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShortDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearShortDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get photos => $_getList(4);
}

class ListServiceDto extends $pb.GeneratedMessage {
  factory ListServiceDto({
    $core.Iterable<ServiceDto>? services,
  }) {
    final $result = create();
    if (services != null) {
      $result.services.addAll(services);
    }
    return $result;
  }
  ListServiceDto._() : super();
  factory ListServiceDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListServiceDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListServiceDto', createEmptyInstance: create)
    ..pc<ServiceDto>(1, _omitFieldNames ? '' : 'services', $pb.PbFieldType.PM, subBuilder: ServiceDto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListServiceDto clone() => ListServiceDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListServiceDto copyWith(void Function(ListServiceDto) updates) => super.copyWith((message) => updates(message as ListServiceDto)) as ListServiceDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListServiceDto create() => ListServiceDto._();
  ListServiceDto createEmptyInstance() => create();
  static $pb.PbList<ListServiceDto> createRepeated() => $pb.PbList<ListServiceDto>();
  @$core.pragma('dart2js:noInline')
  static ListServiceDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListServiceDto>(create);
  static ListServiceDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ServiceDto> get services => $_getList(0);
}

class CaseDto extends $pb.GeneratedMessage {
  factory CaseDto({
    $core.String? id,
    $core.String? title,
    $core.String? carModel,
    $core.String? serviceId,
    $core.Iterable<$core.String>? photos,
    $core.String? video,
    $core.double? workHoures,
    $core.double? price,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (carModel != null) {
      $result.carModel = carModel;
    }
    if (serviceId != null) {
      $result.serviceId = serviceId;
    }
    if (photos != null) {
      $result.photos.addAll(photos);
    }
    if (video != null) {
      $result.video = video;
    }
    if (workHoures != null) {
      $result.workHoures = workHoures;
    }
    if (price != null) {
      $result.price = price;
    }
    return $result;
  }
  CaseDto._() : super();
  factory CaseDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CaseDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CaseDto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'carModel')
    ..aOS(4, _omitFieldNames ? '' : 'serviceId')
    ..pPS(5, _omitFieldNames ? '' : 'photos')
    ..aOS(6, _omitFieldNames ? '' : 'video')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'workHoures', $pb.PbFieldType.OD)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CaseDto clone() => CaseDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CaseDto copyWith(void Function(CaseDto) updates) => super.copyWith((message) => updates(message as CaseDto)) as CaseDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CaseDto create() => CaseDto._();
  CaseDto createEmptyInstance() => create();
  static $pb.PbList<CaseDto> createRepeated() => $pb.PbList<CaseDto>();
  @$core.pragma('dart2js:noInline')
  static CaseDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CaseDto>(create);
  static CaseDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get carModel => $_getSZ(2);
  @$pb.TagNumber(3)
  set carModel($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCarModel() => $_has(2);
  @$pb.TagNumber(3)
  void clearCarModel() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get serviceId => $_getSZ(3);
  @$pb.TagNumber(4)
  set serviceId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasServiceId() => $_has(3);
  @$pb.TagNumber(4)
  void clearServiceId() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get photos => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get video => $_getSZ(5);
  @$pb.TagNumber(6)
  set video($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasVideo() => $_has(5);
  @$pb.TagNumber(6)
  void clearVideo() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get workHoures => $_getN(6);
  @$pb.TagNumber(7)
  set workHoures($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasWorkHoures() => $_has(6);
  @$pb.TagNumber(7)
  void clearWorkHoures() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get price => $_getN(7);
  @$pb.TagNumber(8)
  set price($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPrice() => $_has(7);
  @$pb.TagNumber(8)
  void clearPrice() => clearField(8);
}

class ListCasesDto extends $pb.GeneratedMessage {
  factory ListCasesDto({
    $core.Iterable<CaseDto>? cases,
  }) {
    final $result = create();
    if (cases != null) {
      $result.cases.addAll(cases);
    }
    return $result;
  }
  ListCasesDto._() : super();
  factory ListCasesDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListCasesDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListCasesDto', createEmptyInstance: create)
    ..pc<CaseDto>(1, _omitFieldNames ? '' : 'cases', $pb.PbFieldType.PM, subBuilder: CaseDto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListCasesDto clone() => ListCasesDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListCasesDto copyWith(void Function(ListCasesDto) updates) => super.copyWith((message) => updates(message as ListCasesDto)) as ListCasesDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCasesDto create() => ListCasesDto._();
  ListCasesDto createEmptyInstance() => create();
  static $pb.PbList<ListCasesDto> createRepeated() => $pb.PbList<ListCasesDto>();
  @$core.pragma('dart2js:noInline')
  static ListCasesDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListCasesDto>(create);
  static ListCasesDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CaseDto> get cases => $_getList(0);
}

class RequestDto extends $pb.GeneratedMessage {
  factory RequestDto() => create();
  RequestDto._() : super();
  factory RequestDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RequestDto', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestDto clone() => RequestDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestDto copyWith(void Function(RequestDto) updates) => super.copyWith((message) => updates(message as RequestDto)) as RequestDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestDto create() => RequestDto._();
  RequestDto createEmptyInstance() => create();
  static $pb.PbList<RequestDto> createRepeated() => $pb.PbList<RequestDto>();
  @$core.pragma('dart2js:noInline')
  static RequestDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestDto>(create);
  static RequestDto? _defaultInstance;
}

class ResponseDto extends $pb.GeneratedMessage {
  factory ResponseDto({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  ResponseDto._() : super();
  factory ResponseDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResponseDto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResponseDto clone() => ResponseDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResponseDto copyWith(void Function(ResponseDto) updates) => super.copyWith((message) => updates(message as ResponseDto)) as ResponseDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResponseDto create() => ResponseDto._();
  ResponseDto createEmptyInstance() => create();
  static $pb.PbList<ResponseDto> createRepeated() => $pb.PbList<ResponseDto>();
  @$core.pragma('dart2js:noInline')
  static ResponseDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseDto>(create);
  static ResponseDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
