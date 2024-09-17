import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';

import '../env.dart';

abstract class GrpcInterceptors {
  static FutureOr<GrpcError?> tokenInterceptor(
    ServiceCall serviceCall,
    ServiceMethod serviceMethod,
  ) {
    try {
      final token = serviceCall.clientMetadata?['token'] ?? '';
      final jwtClaim = verifyJwtHS256Signature(token, Env.secretKey);
      jwtClaim.validate();
      return null;
    } catch (_) {
      return GrpcError.unauthenticated();
    }
  }
}
