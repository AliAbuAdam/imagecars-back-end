//
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'auth.pbenum.dart';

export 'auth.pbenum.dart';

class ListUserDto extends $pb.GeneratedMessage {
  factory ListUserDto({
    $core.Iterable<UserDto>? users,
  }) {
    final $result = create();
    if (users != null) {
      $result.users.addAll(users);
    }
    return $result;
  }
  ListUserDto._() : super();
  factory ListUserDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListUserDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListUserDto', createEmptyInstance: create)
    ..pc<UserDto>(1, _omitFieldNames ? '' : 'users', $pb.PbFieldType.PM, subBuilder: UserDto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListUserDto clone() => ListUserDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListUserDto copyWith(void Function(ListUserDto) updates) => super.copyWith((message) => updates(message as ListUserDto)) as ListUserDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListUserDto create() => ListUserDto._();
  ListUserDto createEmptyInstance() => create();
  static $pb.PbList<ListUserDto> createRepeated() => $pb.PbList<ListUserDto>();
  @$core.pragma('dart2js:noInline')
  static ListUserDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListUserDto>(create);
  static ListUserDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserDto> get users => $_getList(0);
}

class FetchGMSRequestDto extends $pb.GeneratedMessage {
  factory FetchGMSRequestDto({
    $core.int? groupKey,
    $core.String? limit,
    $core.String? offset,
  }) {
    final $result = create();
    if (groupKey != null) {
      $result.groupKey = groupKey;
    }
    if (limit != null) {
      $result.limit = limit;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    return $result;
  }
  FetchGMSRequestDto._() : super();
  factory FetchGMSRequestDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchGMSRequestDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchGMSRequestDto', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'groupKey', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'limit')
    ..aOS(3, _omitFieldNames ? '' : 'offset')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchGMSRequestDto clone() => FetchGMSRequestDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchGMSRequestDto copyWith(void Function(FetchGMSRequestDto) updates) => super.copyWith((message) => updates(message as FetchGMSRequestDto)) as FetchGMSRequestDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchGMSRequestDto create() => FetchGMSRequestDto._();
  FetchGMSRequestDto createEmptyInstance() => create();
  static $pb.PbList<FetchGMSRequestDto> createRepeated() => $pb.PbList<FetchGMSRequestDto>();
  @$core.pragma('dart2js:noInline')
  static FetchGMSRequestDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchGMSRequestDto>(create);
  static FetchGMSRequestDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get groupKey => $_getIZ(0);
  @$pb.TagNumber(1)
  set groupKey($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get limit => $_getSZ(1);
  @$pb.TagNumber(2)
  set limit($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get offset => $_getSZ(2);
  @$pb.TagNumber(3)
  set offset($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => clearField(3);
}

class FetchUsersRequestDto extends $pb.GeneratedMessage {
  factory FetchUsersRequestDto({
    $core.Iterable<$core.String>? userIds,
  }) {
    final $result = create();
    if (userIds != null) {
      $result.userIds.addAll(userIds);
    }
    return $result;
  }
  FetchUsersRequestDto._() : super();
  factory FetchUsersRequestDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchUsersRequestDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchUsersRequestDto', createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'userIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchUsersRequestDto clone() => FetchUsersRequestDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchUsersRequestDto copyWith(void Function(FetchUsersRequestDto) updates) => super.copyWith((message) => updates(message as FetchUsersRequestDto)) as FetchUsersRequestDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchUsersRequestDto create() => FetchUsersRequestDto._();
  FetchUsersRequestDto createEmptyInstance() => create();
  static $pb.PbList<FetchUsersRequestDto> createRepeated() => $pb.PbList<FetchUsersRequestDto>();
  @$core.pragma('dart2js:noInline')
  static FetchUsersRequestDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchUsersRequestDto>(create);
  static FetchUsersRequestDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get userIds => $_getList(0);
}

class FindRequestDto extends $pb.GeneratedMessage {
  factory FindRequestDto({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  FindRequestDto._() : super();
  factory FindRequestDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindRequestDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FindRequestDto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindRequestDto clone() => FindRequestDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindRequestDto copyWith(void Function(FindRequestDto) updates) => super.copyWith((message) => updates(message as FindRequestDto)) as FindRequestDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FindRequestDto create() => FindRequestDto._();
  FindRequestDto createEmptyInstance() => create();
  static $pb.PbList<FindRequestDto> createRepeated() => $pb.PbList<FindRequestDto>();
  @$core.pragma('dart2js:noInline')
  static FindRequestDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindRequestDto>(create);
  static FindRequestDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UserDto extends $pb.GeneratedMessage {
  factory UserDto({
    $core.String? id,
    $core.String? username,
    $core.String? email,
    $core.String? accessToken,
    $core.String? refreshToken,
    Gender? gender,
    $core.String? name,
    $core.String? phone,
    $core.String? telegram,
    $core.String? registerDate,
    $core.int? groupId,
    $core.String? codeWord,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (username != null) {
      $result.username = username;
    }
    if (email != null) {
      $result.email = email;
    }
    if (accessToken != null) {
      $result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      $result.refreshToken = refreshToken;
    }
    if (gender != null) {
      $result.gender = gender;
    }
    if (name != null) {
      $result.name = name;
    }
    if (phone != null) {
      $result.phone = phone;
    }
    if (telegram != null) {
      $result.telegram = telegram;
    }
    if (registerDate != null) {
      $result.registerDate = registerDate;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (codeWord != null) {
      $result.codeWord = codeWord;
    }
    return $result;
  }
  UserDto._() : super();
  factory UserDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserDto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'accessToken')
    ..aOS(5, _omitFieldNames ? '' : 'refreshToken')
    ..e<Gender>(6, _omitFieldNames ? '' : 'gender', $pb.PbFieldType.OE, defaultOrMaker: Gender.MAN, valueOf: Gender.valueOf, enumValues: Gender.values)
    ..aOS(7, _omitFieldNames ? '' : 'name')
    ..aOS(8, _omitFieldNames ? '' : 'phone')
    ..aOS(9, _omitFieldNames ? '' : 'telegram')
    ..aOS(10, _omitFieldNames ? '' : 'registerDate')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'groupId', $pb.PbFieldType.O3)
    ..aOS(12, _omitFieldNames ? '' : 'codeWord')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserDto clone() => UserDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserDto copyWith(void Function(UserDto) updates) => super.copyWith((message) => updates(message as UserDto)) as UserDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserDto create() => UserDto._();
  UserDto createEmptyInstance() => create();
  static $pb.PbList<UserDto> createRepeated() => $pb.PbList<UserDto>();
  @$core.pragma('dart2js:noInline')
  static UserDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserDto>(create);
  static UserDto? _defaultInstance;

  /// General
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get accessToken => $_getSZ(3);
  @$pb.TagNumber(4)
  set accessToken($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccessToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccessToken() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get refreshToken => $_getSZ(4);
  @$pb.TagNumber(5)
  set refreshToken($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRefreshToken() => $_has(4);
  @$pb.TagNumber(5)
  void clearRefreshToken() => clearField(5);

  @$pb.TagNumber(6)
  Gender get gender => $_getN(5);
  @$pb.TagNumber(6)
  set gender(Gender v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasGender() => $_has(5);
  @$pb.TagNumber(6)
  void clearGender() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get name => $_getSZ(6);
  @$pb.TagNumber(7)
  set name($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasName() => $_has(6);
  @$pb.TagNumber(7)
  void clearName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get phone => $_getSZ(7);
  @$pb.TagNumber(8)
  set phone($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPhone() => $_has(7);
  @$pb.TagNumber(8)
  void clearPhone() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get telegram => $_getSZ(8);
  @$pb.TagNumber(9)
  set telegram($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTelegram() => $_has(8);
  @$pb.TagNumber(9)
  void clearTelegram() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get registerDate => $_getSZ(9);
  @$pb.TagNumber(10)
  set registerDate($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRegisterDate() => $_has(9);
  @$pb.TagNumber(10)
  void clearRegisterDate() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get groupId => $_getIZ(10);
  @$pb.TagNumber(11)
  set groupId($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasGroupId() => $_has(10);
  @$pb.TagNumber(11)
  void clearGroupId() => clearField(11);

  /// Private
  @$pb.TagNumber(12)
  $core.String get codeWord => $_getSZ(11);
  @$pb.TagNumber(12)
  set codeWord($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasCodeWord() => $_has(11);
  @$pb.TagNumber(12)
  void clearCodeWord() => clearField(12);
}

class TokensDto extends $pb.GeneratedMessage {
  factory TokensDto({
    $core.String? accessToken,
    $core.String? refreshToken,
  }) {
    final $result = create();
    if (accessToken != null) {
      $result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      $result.refreshToken = refreshToken;
    }
    return $result;
  }
  TokensDto._() : super();
  factory TokensDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokensDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TokensDto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accessToken')
    ..aOS(2, _omitFieldNames ? '' : 'refreshToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokensDto clone() => TokensDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokensDto copyWith(void Function(TokensDto) updates) => super.copyWith((message) => updates(message as TokensDto)) as TokensDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokensDto create() => TokensDto._();
  TokensDto createEmptyInstance() => create();
  static $pb.PbList<TokensDto> createRepeated() => $pb.PbList<TokensDto>();
  @$core.pragma('dart2js:noInline')
  static TokensDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokensDto>(create);
  static TokensDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);
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

class SignInRequestDto extends $pb.GeneratedMessage {
  factory SignInRequestDto({
    $core.String? email,
  }) {
    final $result = create();
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  SignInRequestDto._() : super();
  factory SignInRequestDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInRequestDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignInRequestDto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignInRequestDto clone() => SignInRequestDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignInRequestDto copyWith(void Function(SignInRequestDto) updates) => super.copyWith((message) => updates(message as SignInRequestDto)) as SignInRequestDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignInRequestDto create() => SignInRequestDto._();
  SignInRequestDto createEmptyInstance() => create();
  static $pb.PbList<SignInRequestDto> createRepeated() => $pb.PbList<SignInRequestDto>();
  @$core.pragma('dart2js:noInline')
  static SignInRequestDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignInRequestDto>(create);
  static SignInRequestDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
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

class AppInfoDto extends $pb.GeneratedMessage {
  factory AppInfoDto({
    $core.String? lastVersion,
  }) {
    final $result = create();
    if (lastVersion != null) {
      $result.lastVersion = lastVersion;
    }
    return $result;
  }
  AppInfoDto._() : super();
  factory AppInfoDto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppInfoDto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppInfoDto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'lastVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppInfoDto clone() => AppInfoDto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppInfoDto copyWith(void Function(AppInfoDto) updates) => super.copyWith((message) => updates(message as AppInfoDto)) as AppInfoDto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppInfoDto create() => AppInfoDto._();
  AppInfoDto createEmptyInstance() => create();
  static $pb.PbList<AppInfoDto> createRepeated() => $pb.PbList<AppInfoDto>();
  @$core.pragma('dart2js:noInline')
  static AppInfoDto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppInfoDto>(create);
  static AppInfoDto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get lastVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set lastVersion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLastVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearLastVersion() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
