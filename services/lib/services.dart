import 'dart:async';
import 'dart:developer';
import 'package:grpc/grpc.dart';

import 'data/db.dart';
import 'data/grpc_interceptors.dart';
import 'domain/services_rpc.dart';
import 'env.dart';

Future<void> startServer() async {
  runZonedGuarded(() async {
    final servicesServer = Server.create(
      services: [
        ServicesRpc(),
      ],
      interceptors: <Interceptor>[
        GrpcInterceptors.tokenInterceptor,
      ],
      codecRegistry: CodecRegistry(codecs: [GzipCodec()]),
    );
    await servicesServer.serve(port: Env.port);
    log('Server listen port ${servicesServer.port}');

    // Connect to Postgres
    db = initDataBase();
    db.open();
    log('Database connection established');
  }, (error, stack) {
    log('Error', error: error);
  });
}
