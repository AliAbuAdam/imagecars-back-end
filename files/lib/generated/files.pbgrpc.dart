///
//  Generated code. Do not modify.
//  source: files.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'files.pb.dart' as $0;
export 'files.pb.dart';

class FilesRpcClient extends $grpc.Client {
  static final _$putFile = $grpc.ClientMethod<$0.FileDto, $0.ResponseDto>(
      '/FilesRpc/PutFile',
      ($0.FileDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ResponseDto.fromBuffer(value));
  static final _$fetchFile = $grpc.ClientMethod<$0.FileDto, $0.FileDto>(
      '/FilesRpc/FetchFile',
      ($0.FileDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FileDto.fromBuffer(value));
  static final _$deleteFile = $grpc.ClientMethod<$0.FileDto, $0.ResponseDto>(
      '/FilesRpc/DeleteFile',
      ($0.FileDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ResponseDto.fromBuffer(value));

  FilesRpcClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ResponseDto> putFile($0.FileDto request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putFile, request, options: options);
  }

  $grpc.ResponseStream<$0.FileDto> fetchFile($0.FileDto request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$fetchFile, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.ResponseDto> deleteFile($0.FileDto request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteFile, request, options: options);
  }
}

abstract class FilesRpcServiceBase extends $grpc.Service {
  $core.String get $name => 'FilesRpc';

  FilesRpcServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.FileDto, $0.ResponseDto>(
        'PutFile',
        putFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FileDto.fromBuffer(value),
        ($0.ResponseDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FileDto, $0.FileDto>(
        'FetchFile',
        fetchFile_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.FileDto.fromBuffer(value),
        ($0.FileDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FileDto, $0.ResponseDto>(
        'DeleteFile',
        deleteFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FileDto.fromBuffer(value),
        ($0.ResponseDto value) => value.writeToBuffer()));
  }

  $async.Future<$0.ResponseDto> putFile_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FileDto> request) async {
    return putFile(call, await request);
  }

  $async.Stream<$0.FileDto> fetchFile_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FileDto> request) async* {
    yield* fetchFile(call, await request);
  }

  $async.Future<$0.ResponseDto> deleteFile_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FileDto> request) async {
    return deleteFile(call, await request);
  }

  $async.Future<$0.ResponseDto> putFile(
      $grpc.ServiceCall call, $0.FileDto request);
  $async.Stream<$0.FileDto> fetchFile(
      $grpc.ServiceCall call, $0.FileDto request);
  $async.Future<$0.ResponseDto> deleteFile(
      $grpc.ServiceCall call, $0.FileDto request);
}
