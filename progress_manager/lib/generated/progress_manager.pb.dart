//
//  Generated code. Do not modify.
//  source: progress_manager.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UserProgressDto extends $pb.GeneratedMessage {
  factory UserProgressDto({
    $core.String? userId,
    $core.double? coins,
    $core.String? carModel,
    $core.String? vinCode,
    $core.int? yearOfManufacture,
    $core.String? gosNumber,
    $core.Iterable<UserServiceLogDto>? serviceLogs,
    $core.String? preferences,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (coins != null) {
      $result.coins = coins;
    }
    if (carModel != null) {
      $result.carModel = carModel;
    }
    if (vinCode != null) {
      $result.vinCode = vinCode;
    }
    if (yearOfManufacture != null) {
      $result.yearOfManufacture = yearOfManufacture;
    }
    if (gosNumber != null) {
      $result.gosNumber = gosNumber;
    }
    if (serviceLogs != null) {
      $result.serviceLogs.addAll(serviceLogs);
    }
    if (preferences != null) {
      $result.preferences = preferences;
    }
    return $result;
  }
  UserProgressDto._() : super();
  factory UserProgressDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserProgressDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserProgressDto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'coins', $pb.PbFieldType.OD)
    ..aOS(3, _omitFieldNames ? '' : 'carModel')
    ..aOS(4, _omitFieldNames ? '' : 'vinCode')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'yearOfManufacture', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'gosNumber')
    ..pc<UserServiceLogDto>(7, _omitFieldNames ? '' : 'serviceLogs', $pb.PbFieldType.PM, subBuilder: UserServiceLogDto.create)
    ..aOS(8, _omitFieldNames ? '' : 'preferences')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserProgressDto clone() => UserProgressDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserProgressDto copyWith(void Function(UserProgressDto) updates) => super.copyWith((message) => updates(message as UserProgressDto)) as UserProgressDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserProgressDto create() => UserProgressDto._();
  UserProgressDto createEmptyInstance() => create();
  static $pb.PbList<UserProgressDto> createRepeated() => $pb.PbList<UserProgressDto>();
  @$core.pragma('dart2js:noInline')
  static UserProgressDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserProgressDto>(create);
  static UserProgressDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get coins => $_getN(1);
  @$pb.TagNumber(2)
  set coins($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoins() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoins() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get carModel => $_getSZ(2);
  @$pb.TagNumber(3)
  set carModel($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCarModel() => $_has(2);
  @$pb.TagNumber(3)
  void clearCarModel() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get vinCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set vinCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVinCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearVinCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get yearOfManufacture => $_getIZ(4);
  @$pb.TagNumber(5)
  set yearOfManufacture($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasYearOfManufacture() => $_has(4);
  @$pb.TagNumber(5)
  void clearYearOfManufacture() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get gosNumber => $_getSZ(5);
  @$pb.TagNumber(6)
  set gosNumber($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGosNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearGosNumber() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<UserServiceLogDto> get serviceLogs => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get preferences => $_getSZ(7);
  @$pb.TagNumber(8)
  set preferences($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPreferences() => $_has(7);
  @$pb.TagNumber(8)
  void clearPreferences() => clearField(8);
}

class UserServiceLogDto extends $pb.GeneratedMessage {
  factory UserServiceLogDto({
    $core.String? id,
    $core.String? date,
    $core.String? serviceId,
    $core.double? price,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (date != null) {
      $result.date = date;
    }
    if (serviceId != null) {
      $result.serviceId = serviceId;
    }
    if (price != null) {
      $result.price = price;
    }
    return $result;
  }
  UserServiceLogDto._() : super();
  factory UserServiceLogDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserServiceLogDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserServiceLogDto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'date')
    ..aOS(3, _omitFieldNames ? '' : 'serviceId')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserServiceLogDto clone() => UserServiceLogDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserServiceLogDto copyWith(void Function(UserServiceLogDto) updates) => super.copyWith((message) => updates(message as UserServiceLogDto)) as UserServiceLogDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserServiceLogDto create() => UserServiceLogDto._();
  UserServiceLogDto createEmptyInstance() => create();
  static $pb.PbList<UserServiceLogDto> createRepeated() => $pb.PbList<UserServiceLogDto>();
  @$core.pragma('dart2js:noInline')
  static UserServiceLogDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserServiceLogDto>(create);
  static UserServiceLogDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get date => $_getSZ(1);
  @$pb.TagNumber(2)
  set date($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get serviceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set serviceId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasServiceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearServiceId() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);
}

class UpdateUserProgressRequestDto extends $pb.GeneratedMessage {
  factory UpdateUserProgressRequestDto({
    UserProgressDto? userProgress,
  }) {
    final $result = create();
    if (userProgress != null) {
      $result.userProgress = userProgress;
    }
    return $result;
  }
  UpdateUserProgressRequestDto._() : super();
  factory UpdateUserProgressRequestDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserProgressRequestDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserProgressRequestDto', createEmptyInstance: create)
    ..aOM<UserProgressDto>(1, _omitFieldNames ? '' : 'userProgress', subBuilder: UserProgressDto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserProgressRequestDto clone() => UpdateUserProgressRequestDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserProgressRequestDto copyWith(void Function(UpdateUserProgressRequestDto) updates) => super.copyWith((message) => updates(message as UpdateUserProgressRequestDto)) as UpdateUserProgressRequestDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserProgressRequestDto create() => UpdateUserProgressRequestDto._();
  UpdateUserProgressRequestDto createEmptyInstance() => create();
  static $pb.PbList<UpdateUserProgressRequestDto> createRepeated() => $pb.PbList<UpdateUserProgressRequestDto>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserProgressRequestDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserProgressRequestDto>(create);
  static UpdateUserProgressRequestDto? _defaultInstance;

  @$pb.TagNumber(1)
  UserProgressDto get userProgress => $_getN(0);
  @$pb.TagNumber(1)
  set userProgress(UserProgressDto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserProgress() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserProgress() => clearField(1);
  @$pb.TagNumber(1)
  UserProgressDto ensureUserProgress() => $_ensure(0);
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
