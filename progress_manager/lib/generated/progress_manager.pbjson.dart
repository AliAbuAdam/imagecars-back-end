//
//  Generated code. Do not modify.
//  source: progress_manager.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userProgressDtoDescriptor instead')
const UserProgressDto$json = {
  '1': 'UserProgressDto',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'coins', '3': 2, '4': 1, '5': 1, '10': 'coins'},
    {'1': 'car_model', '3': 3, '4': 1, '5': 9, '10': 'carModel'},
    {'1': 'vin_code', '3': 4, '4': 1, '5': 9, '10': 'vinCode'},
    {'1': 'year_of_manufacture', '3': 5, '4': 1, '5': 5, '10': 'yearOfManufacture'},
    {'1': 'gos_number', '3': 6, '4': 1, '5': 9, '10': 'gosNumber'},
    {'1': 'service_logs', '3': 7, '4': 3, '5': 11, '6': '.UserServiceLogDto', '10': 'serviceLogs'},
    {'1': 'preferences', '3': 8, '4': 1, '5': 9, '10': 'preferences'},
  ],
};

/// Descriptor for `UserProgressDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProgressDtoDescriptor = $convert.base64Decode(
    'Cg9Vc2VyUHJvZ3Jlc3NEdG8SFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEhQKBWNvaW5zGAIgAS'
    'gBUgVjb2lucxIbCgljYXJfbW9kZWwYAyABKAlSCGNhck1vZGVsEhkKCHZpbl9jb2RlGAQgASgJ'
    'Ugd2aW5Db2RlEi4KE3llYXJfb2ZfbWFudWZhY3R1cmUYBSABKAVSEXllYXJPZk1hbnVmYWN0dX'
    'JlEh0KCmdvc19udW1iZXIYBiABKAlSCWdvc051bWJlchI1CgxzZXJ2aWNlX2xvZ3MYByADKAsy'
    'Ei5Vc2VyU2VydmljZUxvZ0R0b1ILc2VydmljZUxvZ3MSIAoLcHJlZmVyZW5jZXMYCCABKAlSC3'
    'ByZWZlcmVuY2Vz');

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

@$core.Deprecated('Use updateUserProgressRequestDtoDescriptor instead')
const UpdateUserProgressRequestDto$json = {
  '1': 'UpdateUserProgressRequestDto',
  '2': [
    {'1': 'user_progress', '3': 1, '4': 1, '5': 11, '6': '.UserProgressDto', '10': 'userProgress'},
  ],
};

/// Descriptor for `UpdateUserProgressRequestDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserProgressRequestDtoDescriptor = $convert.base64Decode(
    'ChxVcGRhdGVVc2VyUHJvZ3Jlc3NSZXF1ZXN0RHRvEjUKDXVzZXJfcHJvZ3Jlc3MYASABKAsyEC'
    '5Vc2VyUHJvZ3Jlc3NEdG9SDHVzZXJQcm9ncmVzcw==');

@$core.Deprecated('Use requestDtoDescriptor instead')
const RequestDto$json = {
  '1': 'RequestDto',
};

/// Descriptor for `RequestDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDtoDescriptor = $convert.base64Decode(
    'CgpSZXF1ZXN0RHRv');

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

