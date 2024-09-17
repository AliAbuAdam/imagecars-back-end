import 'package:grpc/grpc.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:progress_manager/data/models/service_log/user_service_log.dart';
import 'data/models/user_progress/user_progress.dart';
import 'env.dart';
import 'generated/progress_manager.pb.dart';

enum CurrencyOperationType { add, use }

abstract class Utils {
  // Fetch id from token
  static int getIdFromToken(String token) {
    final jwtClaim = verifyJwtHS256Signature(token, Env.secretKey);
    final id = int.tryParse(jwtClaim['user_id']);
    if (id == null) throw GrpcError.dataLoss('User id not found');
    return id;
  }

  // Fetch id from meta
  static int getIdFromMetadata(ServiceCall serviceCall) {
    final accessToken = serviceCall.clientMetadata?['token'] ?? '';
    return getIdFromToken(accessToken);
  }

  // Map user progress
  static UserProgressDto parseUserProgress(UserProgressView view) {
    return UserProgressDto(
      userId: view.userId.toString(),
      coins: view.coins,
      carModel: view.carModel,
      vinCode: view.vinCode,
      yearOfManufacture: view.yearOfManufacture,
      gosNumber: view.gosNumber,
      serviceLogs: parseListUserServiceLog(view.serviceLogs),
      preferences: view.preferences,
    );
  }

  static UserServiceLogDto parseUserServiceLog(UserServiceLogView view) {
    return UserServiceLogDto(
      id: view.id.toString(),
      date: view.date,
      serviceId: view.serviceId,
      price: view.price,
    );
  }

  static List<UserServiceLogDto> parseListUserServiceLog(
    List<UserServiceLogView>? list,
  ) {
    if (list == null) return [];
    return list
        .map(
          (view) => UserServiceLogDto(
            id: view.id.toString(),
            date: view.date,
            serviceId: view.serviceId,
            price: view.price,
          ),
        )
        .toList();
  }

  static List<UserProgressDto> parseListUserProgress(
      List<UserProgressView> listView) {
    return listView
        .map(
          (view) => UserProgressDto(
            userId: view.userId.toString(),
            coins: view.coins,
            carModel: view.carModel,
            vinCode: view.vinCode,
            yearOfManufacture: view.yearOfManufacture,
            gosNumber: view.gosNumber,
            serviceLogs: parseListUserServiceLog(view.serviceLogs),
            preferences: view.preferences,
          ),
        )
        .toList();
  }

  static bool areListsEquel(List list1, List list2) {
    if (list1.length != list2.length) {
      return false;
    }
    for (int i = 0; i < list1.length; i++) {
      if (list1[i] != list2[i]) {
        return false;
      }
    }
    return true;
  }
}
