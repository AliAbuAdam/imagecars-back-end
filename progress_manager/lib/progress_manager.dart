import 'dart:async';
import 'dart:developer';
import 'package:grpc/grpc.dart';

import 'data/db.dart';
import 'data/grpc_interceptors.dart';
import 'domain/progress_manager_rpc.dart';
import 'env.dart';

Future<void> startServer() async {
  runZonedGuarded(() async {
    final progressManagerServer = Server.create(
      services: [ProgressManagerRpc()],
      interceptors: <Interceptor>[
        GrpcInterceptors.tokenInterceptor,
      ],
      codecRegistry: CodecRegistry(codecs: [GzipCodec()]),
    );
    await progressManagerServer.serve(port: Env.port);
    log('Server listen port ${progressManagerServer.port}');
    db = initDataBase();
    db.open();
  }, (error, stack) {
    log('Error', error: error);
  });
}
