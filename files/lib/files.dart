import 'dart:async';
import 'dart:developer';
import 'package:files/data/minio_storage.dart';
import 'package:grpc/grpc.dart';

import 'data/grpc_interceptors.dart';
import 'domain/files_rpc.dart';
import 'env.dart';

Future<void> startServer() async {
  runZonedGuarded(() async {
    final filesServer = Server.create(
      services: [
        FilesRpc(MinioStorage()),
      ],
      interceptors: <Interceptor>[
        GrpcInterceptors.tokenInterceptor,
      ],
      codecRegistry: CodecRegistry(codecs: [GzipCodec()]),
    );
    await filesServer.serve(port: Env.port);
    log('Server listen port ${filesServer.port}');
  }, (error, stack) {
    log('Error', error: error);
  });
}
