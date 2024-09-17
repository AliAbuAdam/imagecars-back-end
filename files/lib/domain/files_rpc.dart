import 'dart:async';
import 'dart:typed_data';

import 'package:files/domain/storage.dart';
import 'package:files/generated/files.pbgrpc.dart';
import 'package:grpc/grpc.dart';

final class FilesRpc extends FilesRpcServiceBase {
  final Storage storage;

  FilesRpc(this.storage);

  @override
  Future<ResponseDto> deleteFile(ServiceCall call, FileDto request) async {
    if (request.bucket.isEmpty) {
      throw GrpcError.invalidArgument('Bucket not found');
    }
    if (request.name.isEmpty) {
      throw GrpcError.invalidArgument('Name not found');
    }
    try {
      final message = await storage.deleteFile(
        bucket: request.bucket,
        name: request.name,
      );
      return ResponseDto(
        isComplete: true,
        message: message,
      );
    } catch (error) {
      throw GrpcError.internal('Delete file is error $error');
    }
  }

  @override
  Future<ResponseDto> putFile(ServiceCall call, FileDto request) async {
    if (request.bucket.isEmpty) {
      throw GrpcError.invalidArgument('Bucket not found');
    }
    if (request.name.isEmpty) {
      throw GrpcError.invalidArgument('Name not found');
    }
    if (request.data.isEmpty) {
      throw GrpcError.invalidArgument('File not found');
    }

    try {
      final tag = await storage.putFile(
        bucket: request.bucket,
        name: request.name,
        data: request.data as Uint8List,
      );
      return ResponseDto(
        isComplete: true,
        message: 'File uploaded successfully',
        tag: tag,
      );
    } catch (error) {
      throw GrpcError.internal('File uploaded error: $error');
    }
  }

  @override
  Stream<FileDto> fetchFile(ServiceCall call, FileDto request) async* {
    if (request.bucket.isEmpty) {
      throw GrpcError.invalidArgument('Bucket not found');
    }
    if (request.name.isEmpty) {
      throw GrpcError.invalidArgument('Name not found');
    }
    try {
      yield* storage
          .fetchFile(bucket: request.bucket, name: request.name)
          .transform(
        StreamTransformer.fromHandlers(
          handleData: (data, sink) {
            final array = Uint8List.fromList(data);
            sink.add(FileDto(data: array));
          },
        ),
      );
    } catch (error) {
      throw GrpcError.internal('Fetch file error $error');
    }
  }
}
