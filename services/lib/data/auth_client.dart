import 'package:grpc/grpc.dart';
import 'package:services/env.dart';
import 'package:services/generated/auth/auth.pbgrpc.dart';

/// gRPC-клиент к сервису auth.
///
/// Нужен сервису services, чтобы узнать роль (`groupId`) пользователя:
/// JWT содержит только `user_id`, а пользователи живут в БД сервиса auth.
/// Используется неавторизованный метод `FetchUserOnId`.
abstract class AuthClient {
  static ClientChannel? _channel;

  static ClientChannel _getChannel() {
    final channel = _channel;
    if (channel != null) return channel;
    return _channel = ClientChannel(
      Env.authHost,
      port: Env.authPort,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
  }

  static AuthRpcClient get _client => AuthRpcClient(_getChannel());

  /// Возвращает `groupId` пользователя по его id.
  static Future<int> fetchGroupId(int userId) async {
    final user = await _client.fetchUserOnId(UserDto(id: userId.toString()));
    return user.groupId;
  }
}
