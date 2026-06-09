//
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use genderDescriptor instead')
const Gender$json = {
  '1': 'Gender',
  '2': [
    {'1': 'MAN', '2': 0},
    {'1': 'WOMAN', '2': 1},
  ],
};

/// Descriptor for `Gender`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List genderDescriptor = $convert.base64Decode(
    'CgZHZW5kZXISBwoDTUFOEAASCQoFV09NQU4QAQ==');

@$core.Deprecated('Use listUserDtoDescriptor instead')
const ListUserDto$json = {
  '1': 'ListUserDto',
  '2': [
    {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.UserDto', '10': 'users'},
  ],
};

/// Descriptor for `ListUserDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listUserDtoDescriptor = $convert.base64Decode(
    'CgtMaXN0VXNlckR0bxIeCgV1c2VycxgBIAMoCzIILlVzZXJEdG9SBXVzZXJz');

@$core.Deprecated('Use fetchGMSRequestDtoDescriptor instead')
const FetchGMSRequestDto$json = {
  '1': 'FetchGMSRequestDto',
  '2': [
    {'1': 'group_key', '3': 1, '4': 1, '5': 5, '10': 'groupKey'},
    {'1': 'limit', '3': 2, '4': 1, '5': 9, '10': 'limit'},
    {'1': 'offset', '3': 3, '4': 1, '5': 9, '10': 'offset'},
  ],
};

/// Descriptor for `FetchGMSRequestDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchGMSRequestDtoDescriptor = $convert.base64Decode(
    'ChJGZXRjaEdNU1JlcXVlc3REdG8SGwoJZ3JvdXBfa2V5GAEgASgFUghncm91cEtleRIUCgVsaW'
    '1pdBgCIAEoCVIFbGltaXQSFgoGb2Zmc2V0GAMgASgJUgZvZmZzZXQ=');

@$core.Deprecated('Use fetchUsersRequestDtoDescriptor instead')
const FetchUsersRequestDto$json = {
  '1': 'FetchUsersRequestDto',
  '2': [
    {'1': 'user_ids', '3': 1, '4': 3, '5': 9, '10': 'userIds'},
  ],
};

/// Descriptor for `FetchUsersRequestDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchUsersRequestDtoDescriptor = $convert.base64Decode(
    'ChRGZXRjaFVzZXJzUmVxdWVzdER0bxIZCgh1c2VyX2lkcxgBIAMoCVIHdXNlcklkcw==');

@$core.Deprecated('Use findRequestDtoDescriptor instead')
const FindRequestDto$json = {
  '1': 'FindRequestDto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `FindRequestDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findRequestDtoDescriptor = $convert.base64Decode(
    'Cg5GaW5kUmVxdWVzdER0bxIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use userDtoDescriptor instead')
const UserDto$json = {
  '1': 'UserDto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'access_token', '3': 4, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refresh_token', '3': 5, '4': 1, '5': 9, '10': 'refreshToken'},
    {'1': 'gender', '3': 6, '4': 1, '5': 14, '6': '.Gender', '9': 0, '10': 'gender', '17': true},
    {'1': 'name', '3': 7, '4': 1, '5': 9, '9': 1, '10': 'name', '17': true},
    {'1': 'phone', '3': 8, '4': 1, '5': 9, '9': 2, '10': 'phone', '17': true},
    {'1': 'telegram', '3': 9, '4': 1, '5': 9, '9': 3, '10': 'telegram', '17': true},
    {'1': 'register_date', '3': 10, '4': 1, '5': 9, '9': 4, '10': 'registerDate', '17': true},
    {'1': 'group_id', '3': 11, '4': 1, '5': 5, '9': 5, '10': 'groupId', '17': true},
    {'1': 'coins', '3': 13, '4': 1, '5': 1, '10': 'coins'},
    {'1': 'car_manufacturer', '3': 14, '4': 1, '5': 9, '10': 'carManufacturer'},
    {'1': 'car_model', '3': 15, '4': 1, '5': 9, '10': 'carModel'},
    {'1': 'vin_code', '3': 16, '4': 1, '5': 9, '10': 'vinCode'},
    {'1': 'year_of_manufacture', '3': 17, '4': 1, '5': 5, '10': 'yearOfManufacture'},
    {'1': 'gos_number', '3': 18, '4': 1, '5': 9, '10': 'gosNumber'},
    {'1': 'preferences', '3': 20, '4': 1, '5': 9, '10': 'preferences'},
    {'1': 'code_word', '3': 21, '4': 1, '5': 9, '9': 6, '10': 'codeWord', '17': true},
  ],
  '8': [
    {'1': '_gender'},
    {'1': '_name'},
    {'1': '_phone'},
    {'1': '_telegram'},
    {'1': '_register_date'},
    {'1': '_group_id'},
    {'1': '_code_word'},
  ],
};

/// Descriptor for `UserDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDtoDescriptor = $convert.base64Decode(
    'CgdVc2VyRHRvEg4KAmlkGAEgASgJUgJpZBIaCgh1c2VybmFtZRgCIAEoCVIIdXNlcm5hbWUSFA'
    'oFZW1haWwYAyABKAlSBWVtYWlsEiEKDGFjY2Vzc190b2tlbhgEIAEoCVILYWNjZXNzVG9rZW4S'
    'IwoNcmVmcmVzaF90b2tlbhgFIAEoCVIMcmVmcmVzaFRva2VuEiQKBmdlbmRlchgGIAEoDjIHLk'
    'dlbmRlckgAUgZnZW5kZXKIAQESFwoEbmFtZRgHIAEoCUgBUgRuYW1liAEBEhkKBXBob25lGAgg'
    'ASgJSAJSBXBob25liAEBEh8KCHRlbGVncmFtGAkgASgJSANSCHRlbGVncmFtiAEBEigKDXJlZ2'
    'lzdGVyX2RhdGUYCiABKAlIBFIMcmVnaXN0ZXJEYXRliAEBEh4KCGdyb3VwX2lkGAsgASgFSAVS'
    'B2dyb3VwSWSIAQESFAoFY29pbnMYDSABKAFSBWNvaW5zEikKEGNhcl9tYW51ZmFjdHVyZXIYDi'
    'ABKAlSD2Nhck1hbnVmYWN0dXJlchIbCgljYXJfbW9kZWwYDyABKAlSCGNhck1vZGVsEhkKCHZp'
    'bl9jb2RlGBAgASgJUgd2aW5Db2RlEi4KE3llYXJfb2ZfbWFudWZhY3R1cmUYESABKAVSEXllYX'
    'JPZk1hbnVmYWN0dXJlEh0KCmdvc19udW1iZXIYEiABKAlSCWdvc051bWJlchIgCgtwcmVmZXJl'
    'bmNlcxgUIAEoCVILcHJlZmVyZW5jZXMSIAoJY29kZV93b3JkGBUgASgJSAZSCGNvZGVXb3JkiA'
    'EBQgkKB19nZW5kZXJCBwoFX25hbWVCCAoGX3Bob25lQgsKCV90ZWxlZ3JhbUIQCg5fcmVnaXN0'
    'ZXJfZGF0ZUILCglfZ3JvdXBfaWRCDAoKX2NvZGVfd29yZA==');

@$core.Deprecated('Use tokensDtoDescriptor instead')
const TokensDto$json = {
  '1': 'TokensDto',
  '2': [
    {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `TokensDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokensDtoDescriptor = $convert.base64Decode(
    'CglUb2tlbnNEdG8SIQoMYWNjZXNzX3Rva2VuGAEgASgJUgthY2Nlc3NUb2tlbhIjCg1yZWZyZX'
    'NoX3Rva2VuGAIgASgJUgxyZWZyZXNoVG9rZW4=');

@$core.Deprecated('Use requestDtoDescriptor instead')
const RequestDto$json = {
  '1': 'RequestDto',
};

/// Descriptor for `RequestDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDtoDescriptor = $convert.base64Decode(
    'CgpSZXF1ZXN0RHRv');

@$core.Deprecated('Use signInRequestDtoDescriptor instead')
const SignInRequestDto$json = {
  '1': 'SignInRequestDto',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `SignInRequestDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInRequestDtoDescriptor = $convert.base64Decode(
    'ChBTaWduSW5SZXF1ZXN0RHRvEhQKBWVtYWlsGAEgASgJUgVlbWFpbA==');

@$core.Deprecated('Use responseDtoDescriptor instead')
const ResponseDto$json = {
  '1': 'ResponseDto',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ResponseDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDtoDescriptor = $convert.base64Decode(
    'CgtSZXNwb25zZUR0bxIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use appInfoDtoDescriptor instead')
const AppInfoDto$json = {
  '1': 'AppInfoDto',
  '2': [
    {'1': 'last_version', '3': 1, '4': 1, '5': 9, '10': 'lastVersion'},
  ],
};

/// Descriptor for `AppInfoDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appInfoDtoDescriptor = $convert.base64Decode(
    'CgpBcHBJbmZvRHRvEiEKDGxhc3RfdmVyc2lvbhgBIAEoCVILbGFzdFZlcnNpb24=');

@$core.Deprecated('Use userServiceLogDtoDescriptor instead')
const UserServiceLogDto$json = {
  '1': 'UserServiceLogDto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'date', '3': 2, '4': 1, '5': 9, '10': 'date'},
    {'1': 'service_id', '3': 3, '4': 1, '5': 9, '10': 'serviceId'},
    {'1': 'price', '3': 4, '4': 1, '5': 1, '10': 'price'},
  ],
};

/// Descriptor for `UserServiceLogDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userServiceLogDtoDescriptor = $convert.base64Decode(
    'ChFVc2VyU2VydmljZUxvZ0R0bxIOCgJpZBgBIAEoCVICaWQSEgoEZGF0ZRgCIAEoCVIEZGF0ZR'
    'IdCgpzZXJ2aWNlX2lkGAMgASgJUglzZXJ2aWNlSWQSFAoFcHJpY2UYBCABKAFSBXByaWNl');

