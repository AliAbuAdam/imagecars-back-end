import 'dart:typed_data';

abstract interface class Storage {
  // сохранение файла
  Future<String> putFile({
    required String bucket,
    required String name,
    required Uint8List data,
  });

// удаление файла
  Future<String> deleteFile({
    required String bucket,
    required String name,
  });

// получение файла
  Stream<List<int>> fetchFile({
    required String bucket,
    required String name,
  });
}
