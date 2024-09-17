import 'dart:async';
import 'dart:developer';

import 'package:auth/data/db.dart';
import 'package:auth/data/grpc_interceptors.dart';
import 'package:auth/domain/auth_rpc.dart';
import 'package:auth/env.dart';
import 'package:grpc/grpc.dart';

Future<void> startServer() async {
  runZonedGuarded(() async {
    final authServer = Server.create(
      services: [AuthRpc()],
      interceptors: <Interceptor>[
        GrpcInterceptors.tokenInterceptor,
      ],
      codecRegistry: CodecRegistry(codecs: [GzipCodec()]),
    );
    await authServer.serve(port: Env.port);
    log('Server listen port ${authServer.port}');
    db = initDataBase();
    db.open();
  }, (error, stack) {
    log('Error', error: error);
  });
}
