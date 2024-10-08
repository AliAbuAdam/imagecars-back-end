import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';

import '../env.dart';
import 'db.dart';

final _excludeMethods = [
  'FetchMarkaz',
  'FetchAllMarkazes',
  'FetchCourse',
  'FetchAllCourses',
  'FetchSeries',
  'FetchAllSeries',
  'FetchLesson',
  'FetchAllLessons',
  'FetchQuestion',
  'FetchAllQuestions',
  'FetchQuestionOption',
  'FetchAllQuestionOptions',
];

abstract class GrpcInterceptors {
  static FutureOr<GrpcError?> tokenInterceptor(
    ServiceCall serviceCall,
    ServiceMethod serviceMethod,
  ) {
    _checkDatabase();
    try {
      if (_excludeMethods.contains(serviceMethod.name)) return null;
      final token = serviceCall.clientMetadata?['token'] ?? '';
      final jwtClaim = verifyJwtHS256Signature(token, Env.secretKey);
      jwtClaim.validate();
      return null;
    } catch (_) {
      return GrpcError.unauthenticated();
    }
  }

  static void _checkDatabase() {
    if (db.connection().isClosed) {
      db = initDataBase();
    }
  }
}
