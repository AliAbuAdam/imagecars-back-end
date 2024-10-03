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

@$core.Deprecated('Use workCaseDtoDescriptor instead')
const WorkCaseDto$json = {
  '1': 'WorkCaseDto',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'car_model', '3': 3, '4': 1, '5': 9, '10': 'carModel'},
    {'1': 'service_id', '3': 4, '4': 1, '5': 9, '10': 'serviceId'},
    {'1': 'photos', '3': 5, '4': 3, '5': 9, '10': 'photos'},
    {'1': 'video', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'video', '17': true},
    {'1': 'description', '3': 7, '4': 1, '5': 9, '9': 1, '10': 'description', '17': true},
    {'1': 'master_name', '3': 8, '4': 1, '5': 9, '9': 2, '10': 'masterName', '17': true},
    {'1': 'work_houres', '3': 9, '4': 1, '5': 1, '10': 'workHoures'},
    {'1': 'price', '3': 10, '4': 1, '5': 1, '10': 'price'},
  ],
  '8': [
    {'1': '_video'},
    {'1': '_description'},
    {'1': '_master_name'},
  ],
};

/// Descriptor for `WorkCaseDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List workCaseDtoDescriptor = $convert.base64Decode(
    'CgtXb3JrQ2FzZUR0bxIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEhsKCW'
    'Nhcl9tb2RlbBgDIAEoCVIIY2FyTW9kZWwSHQoKc2VydmljZV9pZBgEIAEoCVIJc2VydmljZUlk'
    'EhYKBnBob3RvcxgFIAMoCVIGcGhvdG9zEhkKBXZpZGVvGAYgASgJSABSBXZpZGVviAEBEiUKC2'
    'Rlc2NyaXB0aW9uGAcgASgJSAFSC2Rlc2NyaXB0aW9uiAEBEiQKC21hc3Rlcl9uYW1lGAggASgJ'
    'SAJSCm1hc3Rlck5hbWWIAQESHwoLd29ya19ob3VyZXMYCSABKAFSCndvcmtIb3VyZXMSFAoFcH'
    'JpY2UYCiABKAFSBXByaWNlQggKBl92aWRlb0IOCgxfZGVzY3JpcHRpb25CDgoMX21hc3Rlcl9u'
    'YW1l');

@$core.Deprecated('Use listWorkCaseDtoDescriptor instead')
const ListWorkCaseDto$json = {
  '1': 'ListWorkCaseDto',
  '2': [
    {'1': 'work_cases', '3': 1, '4': 3, '5': 11, '6': '.WorkCaseDto', '10': 'workCases'},
  ],
};

/// Descriptor for `ListWorkCaseDto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listWorkCaseDtoDescriptor = $convert.base64Decode(
    'Cg9MaXN0V29ya0Nhc2VEdG8SKwoKd29ya19jYXNlcxgBIAMoCzIMLldvcmtDYXNlRHRvUgl3b3'
    'JrQ2FzZXM=');

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

