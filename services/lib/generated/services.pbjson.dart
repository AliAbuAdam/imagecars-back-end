//
//  Generated code. Do not modify.
//  source: services.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use serviceDtoDescriptor instead')
const ServiceDto$json = {
  '1': 'ServiceDto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'short_description', '3': 3, '4': 1, '5': 9, '10': 'shortDescription'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'photos', '3': 5, '4': 3, '5': 9, '10': 'photos'},
  ],
};

/// Descriptor for `ServiceDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceDtoDescriptor = $convert.base64Decode(
    'CgpTZXJ2aWNlRHRvEg4KAmlkGAEgASgJUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSKwoRc2'
    'hvcnRfZGVzY3JpcHRpb24YAyABKAlSEHNob3J0RGVzY3JpcHRpb24SIAoLZGVzY3JpcHRpb24Y'
    'BCABKAlSC2Rlc2NyaXB0aW9uEhYKBnBob3RvcxgFIAMoCVIGcGhvdG9z');

@$core.Deprecated('Use listServiceDtoDescriptor instead')
const ListServiceDto$json = {
  '1': 'ListServiceDto',
  '2': [
    {'1': 'services', '3': 1, '4': 3, '5': 11, '6': '.ServiceDto', '10': 'services'},
  ],
};

/// Descriptor for `ListServiceDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listServiceDtoDescriptor = $convert.base64Decode(
    'Cg5MaXN0U2VydmljZUR0bxInCghzZXJ2aWNlcxgBIAMoCzILLlNlcnZpY2VEdG9SCHNlcnZpY2'
    'Vz');

@$core.Deprecated('Use caseDtoDescriptor instead')
const CaseDto$json = {
  '1': 'CaseDto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'car_model', '3': 3, '4': 1, '5': 9, '10': 'carModel'},
    {'1': 'service_id', '3': 4, '4': 1, '5': 9, '10': 'serviceId'},
    {'1': 'photos', '3': 5, '4': 3, '5': 9, '10': 'photos'},
    {'1': 'video', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'video', '17': true},
    {'1': 'work_houres', '3': 7, '4': 1, '5': 1, '10': 'workHoures'},
    {'1': 'price', '3': 8, '4': 1, '5': 1, '10': 'price'},
  ],
  '8': [
    {'1': '_video'},
  ],
};

/// Descriptor for `CaseDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List caseDtoDescriptor = $convert.base64Decode(
    'CgdDYXNlRHRvEg4KAmlkGAEgASgJUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSGwoJY2FyX2'
    '1vZGVsGAMgASgJUghjYXJNb2RlbBIdCgpzZXJ2aWNlX2lkGAQgASgJUglzZXJ2aWNlSWQSFgoG'
    'cGhvdG9zGAUgAygJUgZwaG90b3MSGQoFdmlkZW8YBiABKAlIAFIFdmlkZW+IAQESHwoLd29ya1'
    '9ob3VyZXMYByABKAFSCndvcmtIb3VyZXMSFAoFcHJpY2UYCCABKAFSBXByaWNlQggKBl92aWRl'
    'bw==');

@$core.Deprecated('Use listCasesDtoDescriptor instead')
const ListCasesDto$json = {
  '1': 'ListCasesDto',
  '2': [
    {'1': 'cases', '3': 1, '4': 3, '5': 11, '6': '.CaseDto', '10': 'cases'},
  ],
};

/// Descriptor for `ListCasesDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCasesDtoDescriptor = $convert.base64Decode(
    'CgxMaXN0Q2FzZXNEdG8SHgoFY2FzZXMYASADKAsyCC5DYXNlRHRvUgVjYXNlcw==');

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

