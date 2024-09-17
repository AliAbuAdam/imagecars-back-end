//
//  Generated code. Do not modify.
//  source: progress_manager.proto
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

import 'progress_manager.pb.dart' as $0;

export 'progress_manager.pb.dart';

@$pb.GrpcServiceName('ProgressManagerRpc')
class ProgressManagerRpcClient extends $grpc.Client {
  static final _$createUserProgress = $grpc.ClientMethod<$0.RequestDto, $0.UserProgressDto>(
      '/ProgressManagerRpc/CreateUserProgress',
      ($0.RequestDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserProgressDto.fromBuffer(value));
  static final _$fetchUserProgress = $grpc.ClientMethod<$0.RequestDto, $0.UserProgressDto>(
      '/ProgressManagerRpc/FetchUserProgress',
      ($0.RequestDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserProgressDto.fromBuffer(value));
  static final _$updateUserProgress = $grpc.ClientMethod<$0.UpdateUserProgressRequestDto, $0.UserProgressDto>(
      '/ProgressManagerRpc/UpdateUserProgress',
      ($0.UpdateUserProgressRequestDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserProgressDto.fromBuffer(value));
  static final _$deleteUserProgress = $grpc.ClientMethod<$0.RequestDto, $0.ResponseDto>(
      '/ProgressManagerRpc/DeleteUserProgress',
      ($0.RequestDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ResponseDto.fromBuffer(value));

  ProgressManagerRpcClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserProgressDto> createUserProgress($0.RequestDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUserProgress, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserProgressDto> fetchUserProgress($0.RequestDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchUserProgress, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserProgressDto> updateUserProgress($0.UpdateUserProgressRequestDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserProgress, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResponseDto> deleteUserProgress($0.RequestDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUserProgress, request, options: options);
  }
}

@$pb.GrpcServiceName('ProgressManagerRpc')
abstract class ProgressManagerRpcServiceBase extends $grpc.Service {
  $core.String get $name => 'ProgressManagerRpc';

  ProgressManagerRpcServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RequestDto, $0.UserProgressDto>(
        'CreateUserProgress',
        createUserProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RequestDto.fromBuffer(value),
        ($0.UserProgressDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RequestDto, $0.UserProgressDto>(
        'FetchUserProgress',
        fetchUserProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RequestDto.fromBuffer(value),
        ($0.UserProgressDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateUserProgressRequestDto, $0.UserProgressDto>(
        'UpdateUserProgress',
        updateUserProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateUserProgressRequestDto.fromBuffer(value),
        ($0.UserProgressDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RequestDto, $0.ResponseDto>(
        'DeleteUserProgress',
        deleteUserProgress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RequestDto.fromBuffer(value),
        ($0.ResponseDto value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserProgressDto> createUserProgress_Pre($grpc.ServiceCall call, $async.Future<$0.RequestDto> request) async {
    return createUserProgress(call, await request);
  }

  $async.Future<$0.UserProgressDto> fetchUserProgress_Pre($grpc.ServiceCall call, $async.Future<$0.RequestDto> request) async {
    return fetchUserProgress(call, await request);
  }

  $async.Future<$0.UserProgressDto> updateUserProgress_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateUserProgressRequestDto> request) async {
    return updateUserProgress(call, await request);
  }

  $async.Future<$0.ResponseDto> deleteUserProgress_Pre($grpc.ServiceCall call, $async.Future<$0.RequestDto> request) async {
    return deleteUserProgress(call, await request);
  }

  $async.Future<$0.UserProgressDto> createUserProgress($grpc.ServiceCall call, $0.RequestDto request);
  $async.Future<$0.UserProgressDto> fetchUserProgress($grpc.ServiceCall call, $0.RequestDto request);
  $async.Future<$0.UserProgressDto> updateUserProgress($grpc.ServiceCall call, $0.UpdateUserProgressRequestDto request);
  $async.Future<$0.ResponseDto> deleteUserProgress($grpc.ServiceCall call, $0.RequestDto request);
}
