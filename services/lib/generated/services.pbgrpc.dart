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
  static final _$fetchWorkCase = $grpc.ClientMethod<$0.WorkCaseDto, $0.WorkCaseDto>(
      '/ServicesRpc/FetchWorkCase',
      ($0.WorkCaseDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.WorkCaseDto.fromBuffer(value));
  static final _$fetchAllWorkCases = $grpc.ClientMethod<$0.RequestDto, $0.ListWorkCaseDto>(
      '/ServicesRpc/FetchAllWorkCases',
      ($0.RequestDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListWorkCaseDto.fromBuffer(value));

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

  $grpc.ResponseFuture<$0.WorkCaseDto> fetchWorkCase($0.WorkCaseDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchWorkCase, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListWorkCaseDto> fetchAllWorkCases($0.RequestDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchAllWorkCases, request, options: options);
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
    $addMethod($grpc.ServiceMethod<$0.WorkCaseDto, $0.WorkCaseDto>(
        'FetchWorkCase',
        fetchWorkCase_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.WorkCaseDto.fromBuffer(value),
        ($0.WorkCaseDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RequestDto, $0.ListWorkCaseDto>(
        'FetchAllWorkCases',
        fetchAllWorkCases_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RequestDto.fromBuffer(value),
        ($0.ListWorkCaseDto value) => value.writeToBuffer()));
  }

  $async.Future<$0.ServiceDto> fetchService_Pre($grpc.ServiceCall call, $async.Future<$0.ServiceDto> request) async {
    return fetchService(call, await request);
  }

  $async.Future<$0.ListServiceDto> fetchAllServices_Pre($grpc.ServiceCall call, $async.Future<$0.RequestDto> request) async {
    return fetchAllServices(call, await request);
  }

  $async.Future<$0.WorkCaseDto> fetchWorkCase_Pre($grpc.ServiceCall call, $async.Future<$0.WorkCaseDto> request) async {
    return fetchWorkCase(call, await request);
  }

  $async.Future<$0.ListWorkCaseDto> fetchAllWorkCases_Pre($grpc.ServiceCall call, $async.Future<$0.RequestDto> request) async {
    return fetchAllWorkCases(call, await request);
  }

  $async.Future<$0.ServiceDto> fetchService($grpc.ServiceCall call, $0.ServiceDto request);
  $async.Future<$0.ListServiceDto> fetchAllServices($grpc.ServiceCall call, $0.RequestDto request);
  $async.Future<$0.WorkCaseDto> fetchWorkCase($grpc.ServiceCall call, $0.WorkCaseDto request);
  $async.Future<$0.ListWorkCaseDto> fetchAllWorkCases($grpc.ServiceCall call, $0.RequestDto request);
}
