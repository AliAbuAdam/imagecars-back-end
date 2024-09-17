//
//  Generated code. Do not modify.
//  source: services.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'services.pb.dart' as $0;

export 'services.pb.dart';

@$pb.GrpcServiceName('ServicesRpc')
class ServicesRpcClient extends $grpc.Client {
  static final _$fetchService = $grpc.ClientMethod<$0.ServiceDto, $0.ServiceDto>(
      '/ServicesRpc/FetchService',
      ($0.ServiceDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ServiceDto.fromBuffer(value));
  static final _$fetchAllServices = $grpc.ClientMethod<$0.RequestDto, $0.ListServiceDto>(
      '/ServicesRpc/FetchAllServices',
      ($0.RequestDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListServiceDto.fromBuffer(value));
  static final _$fetchCase = $grpc.ClientMethod<$0.CaseDto, $0.CaseDto>(
      '/ServicesRpc/FetchCase',
      ($0.CaseDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CaseDto.fromBuffer(value));
  static final _$fetchAllCases = $grpc.ClientMethod<$0.RequestDto, $0.ListCasesDto>(
      '/ServicesRpc/FetchAllCases',
      ($0.RequestDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListCasesDto.fromBuffer(value));

  ServicesRpcClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ServiceDto> fetchService($0.ServiceDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchService, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListServiceDto> fetchAllServices($0.RequestDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchAllServices, request, options: options);
  }

  $grpc.ResponseFuture<$0.CaseDto> fetchCase($0.CaseDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchCase, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListCasesDto> fetchAllCases($0.RequestDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchAllCases, request, options: options);
  }
}

@$pb.GrpcServiceName('ServicesRpc')
abstract class ServicesRpcServiceBase extends $grpc.Service {
  $core.String get $name => 'ServicesRpc';

  ServicesRpcServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ServiceDto, $0.ServiceDto>(
        'FetchService',
        fetchService_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ServiceDto.fromBuffer(value),
        ($0.ServiceDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RequestDto, $0.ListServiceDto>(
        'FetchAllServices',
        fetchAllServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RequestDto.fromBuffer(value),
        ($0.ListServiceDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CaseDto, $0.CaseDto>(
        'FetchCase',
        fetchCase_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CaseDto.fromBuffer(value),
        ($0.CaseDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RequestDto, $0.ListCasesDto>(
        'FetchAllCases',
        fetchAllCases_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RequestDto.fromBuffer(value),
        ($0.ListCasesDto value) => value.writeToBuffer()));
  }

  $async.Future<$0.ServiceDto> fetchService_Pre($grpc.ServiceCall call, $async.Future<$0.ServiceDto> request) async {
    return fetchService(call, await request);
  }

  $async.Future<$0.ListServiceDto> fetchAllServices_Pre($grpc.ServiceCall call, $async.Future<$0.RequestDto> request) async {
    return fetchAllServices(call, await request);
  }

  $async.Future<$0.CaseDto> fetchCase_Pre($grpc.ServiceCall call, $async.Future<$0.CaseDto> request) async {
    return fetchCase(call, await request);
  }

  $async.Future<$0.ListCasesDto> fetchAllCases_Pre($grpc.ServiceCall call, $async.Future<$0.RequestDto> request) async {
    return fetchAllCases(call, await request);
  }

  $async.Future<$0.ServiceDto> fetchService($grpc.ServiceCall call, $0.ServiceDto request);
  $async.Future<$0.ListServiceDto> fetchAllServices($grpc.ServiceCall call, $0.RequestDto request);
  $async.Future<$0.CaseDto> fetchCase($grpc.ServiceCall call, $0.CaseDto request);
  $async.Future<$0.ListCasesDto> fetchAllCases($grpc.ServiceCall call, $0.RequestDto request);
}
