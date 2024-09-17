//
//  Generated code. Do not modify.
//  source: auth.proto
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

import 'auth.pb.dart' as $0;

export 'auth.pb.dart';

@$pb.GrpcServiceName('AuthRpc')
class AuthRpcClient extends $grpc.Client {
  static final _$authWithEmail = $grpc.ClientMethod<$0.SignInRequestDto, $0.TokensDto>(
      '/AuthRpc/AuthWithEmail',
      ($0.SignInRequestDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TokensDto.fromBuffer(value));
  static final _$refreshToken = $grpc.ClientMethod<$0.TokensDto, $0.TokensDto>(
      '/AuthRpc/RefreshToken',
      ($0.TokensDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TokensDto.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$0.UserDto, $0.UserDto>(
      '/AuthRpc/UpdateUser',
      ($0.UserDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserDto.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$0.RequestDto, $0.ResponseDto>(
      '/AuthRpc/DeleteUser',
      ($0.RequestDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ResponseDto.fromBuffer(value));
  static final _$fetchUser = $grpc.ClientMethod<$0.RequestDto, $0.UserDto>(
      '/AuthRpc/FetchUser',
      ($0.RequestDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserDto.fromBuffer(value));
  static final _$fetchUserOnId = $grpc.ClientMethod<$0.UserDto, $0.UserDto>(
      '/AuthRpc/FetchUserOnId',
      ($0.UserDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserDto.fromBuffer(value));
  static final _$findUser = $grpc.ClientMethod<$0.FindRequestDto, $0.UserDto>(
      '/AuthRpc/FindUser',
      ($0.FindRequestDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserDto.fromBuffer(value));
  static final _$fetchUsers = $grpc.ClientMethod<$0.FetchUsersRequestDto, $0.ListUserDto>(
      '/AuthRpc/FetchUsers',
      ($0.FetchUsersRequestDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListUserDto.fromBuffer(value));
  static final _$fetchGMS = $grpc.ClientMethod<$0.FetchGMSRequestDto, $0.ListUserDto>(
      '/AuthRpc/FetchGMS',
      ($0.FetchGMSRequestDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListUserDto.fromBuffer(value));
  static final _$fetchAppInfo = $grpc.ClientMethod<$0.RequestDto, $0.AppInfoDto>(
      '/AuthRpc/FetchAppInfo',
      ($0.RequestDto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AppInfoDto.fromBuffer(value));

  AuthRpcClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.TokensDto> authWithEmail($0.SignInRequestDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authWithEmail, request, options: options);
  }

  $grpc.ResponseFuture<$0.TokensDto> refreshToken($0.TokensDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshToken, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserDto> updateUser($0.UserDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResponseDto> deleteUser($0.RequestDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserDto> fetchUser($0.RequestDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserDto> fetchUserOnId($0.UserDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchUserOnId, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserDto> findUser($0.FindRequestDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListUserDto> fetchUsers($0.FetchUsersRequestDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchUsers, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListUserDto> fetchGMS($0.FetchGMSRequestDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchGMS, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppInfoDto> fetchAppInfo($0.RequestDto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fetchAppInfo, request, options: options);
  }
}

@$pb.GrpcServiceName('AuthRpc')
abstract class AuthRpcServiceBase extends $grpc.Service {
  $core.String get $name => 'AuthRpc';

  AuthRpcServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SignInRequestDto, $0.TokensDto>(
        'AuthWithEmail',
        authWithEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignInRequestDto.fromBuffer(value),
        ($0.TokensDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TokensDto, $0.TokensDto>(
        'RefreshToken',
        refreshToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TokensDto.fromBuffer(value),
        ($0.TokensDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserDto, $0.UserDto>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserDto.fromBuffer(value),
        ($0.UserDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RequestDto, $0.ResponseDto>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RequestDto.fromBuffer(value),
        ($0.ResponseDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RequestDto, $0.UserDto>(
        'FetchUser',
        fetchUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RequestDto.fromBuffer(value),
        ($0.UserDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserDto, $0.UserDto>(
        'FetchUserOnId',
        fetchUserOnId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserDto.fromBuffer(value),
        ($0.UserDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FindRequestDto, $0.UserDto>(
        'FindUser',
        findUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FindRequestDto.fromBuffer(value),
        ($0.UserDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchUsersRequestDto, $0.ListUserDto>(
        'FetchUsers',
        fetchUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchUsersRequestDto.fromBuffer(value),
        ($0.ListUserDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FetchGMSRequestDto, $0.ListUserDto>(
        'FetchGMS',
        fetchGMS_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FetchGMSRequestDto.fromBuffer(value),
        ($0.ListUserDto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RequestDto, $0.AppInfoDto>(
        'FetchAppInfo',
        fetchAppInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RequestDto.fromBuffer(value),
        ($0.AppInfoDto value) => value.writeToBuffer()));
  }

  $async.Future<$0.TokensDto> authWithEmail_Pre($grpc.ServiceCall call, $async.Future<$0.SignInRequestDto> request) async {
    return authWithEmail(call, await request);
  }

  $async.Future<$0.TokensDto> refreshToken_Pre($grpc.ServiceCall call, $async.Future<$0.TokensDto> request) async {
    return refreshToken(call, await request);
  }

  $async.Future<$0.UserDto> updateUser_Pre($grpc.ServiceCall call, $async.Future<$0.UserDto> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$0.ResponseDto> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$0.RequestDto> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$0.UserDto> fetchUser_Pre($grpc.ServiceCall call, $async.Future<$0.RequestDto> request) async {
    return fetchUser(call, await request);
  }

  $async.Future<$0.UserDto> fetchUserOnId_Pre($grpc.ServiceCall call, $async.Future<$0.UserDto> request) async {
    return fetchUserOnId(call, await request);
  }

  $async.Future<$0.UserDto> findUser_Pre($grpc.ServiceCall call, $async.Future<$0.FindRequestDto> request) async {
    return findUser(call, await request);
  }

  $async.Future<$0.ListUserDto> fetchUsers_Pre($grpc.ServiceCall call, $async.Future<$0.FetchUsersRequestDto> request) async {
    return fetchUsers(call, await request);
  }

  $async.Future<$0.ListUserDto> fetchGMS_Pre($grpc.ServiceCall call, $async.Future<$0.FetchGMSRequestDto> request) async {
    return fetchGMS(call, await request);
  }

  $async.Future<$0.AppInfoDto> fetchAppInfo_Pre($grpc.ServiceCall call, $async.Future<$0.RequestDto> request) async {
    return fetchAppInfo(call, await request);
  }

  $async.Future<$0.TokensDto> authWithEmail($grpc.ServiceCall call, $0.SignInRequestDto request);
  $async.Future<$0.TokensDto> refreshToken($grpc.ServiceCall call, $0.TokensDto request);
  $async.Future<$0.UserDto> updateUser($grpc.ServiceCall call, $0.UserDto request);
  $async.Future<$0.ResponseDto> deleteUser($grpc.ServiceCall call, $0.RequestDto request);
  $async.Future<$0.UserDto> fetchUser($grpc.ServiceCall call, $0.RequestDto request);
  $async.Future<$0.UserDto> fetchUserOnId($grpc.ServiceCall call, $0.UserDto request);
  $async.Future<$0.UserDto> findUser($grpc.ServiceCall call, $0.FindRequestDto request);
  $async.Future<$0.ListUserDto> fetchUsers($grpc.ServiceCall call, $0.FetchUsersRequestDto request);
  $async.Future<$0.ListUserDto> fetchGMS($grpc.ServiceCall call, $0.FetchGMSRequestDto request);
  $async.Future<$0.AppInfoDto> fetchAppInfo($grpc.ServiceCall call, $0.RequestDto request);
}
