import 'package:grpc/grpc.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:services/data/models/services/service.dart';
import 'package:services/data/models/work_case/work_case.dart';
import 'package:services/generated/services.pbgrpc.dart';
import 'env.dart';

abstract class Utils {
  // Получение id из токена
  static int getIdFromToken(String token) {
    final jwtClaim = verifyJwtHS256Signature(token, Env.secretKey);
    final id = int.tryParse(jwtClaim['user_id']);
    if (id == null) throw GrpcError.dataLoss('User id not found');
    return id;
  }

  // Получение id из метадаты
  static int getIdFromMetadata(ServiceCall serviceCall) {
    final accessToken = serviceCall.clientMetadata?['token'] ?? '';
    return getIdFromToken(accessToken);
  }

  // Parse list service dto
  static ListServiceDto parseListService(List<ServiceView> list) {
    final services = list.map(
      (view) => ServiceDto(
        id: view.id.toString(),
        title: view.title,
        shortDescription: view.shortDescription,
        description: view.description,
        photos: view.photos,
      ),
    );
    return ListServiceDto(services: services);
  }

  // Parse service dto
  static ServiceDto parseService(ServiceView view) {
    return ServiceDto(
      id: view.id.toString(),
      title: view.title,
      shortDescription: view.shortDescription,
      description: view.description,
      photos: view.photos,
    );
  }

  // Parse list case dto
  static ListWorkCaseDto parseListWorkCase(List<WorkCaseView> list) {
    final workCases = list.map(
      (view) => WorkCaseDto(
        id: view.id.toString(),
        title: view.title,
        carModel: view.carModel,
        serviceId: view.serviceId.toString(),
        photos: view.photos,
        video: view.video,
        description: view.description,
        masterName: view.masterName,
        workHoures: view.workHoures,
        price: view.price,
      ),
    );
    return ListWorkCaseDto(workCases: workCases);
  }

  // Parse case dto
  static WorkCaseDto parseWorkCase(WorkCaseView view) {
    return WorkCaseDto(
      id: view.id.toString(),
      title: view.title,
      carModel: view.carModel,
      serviceId: view.serviceId.toString(),
      photos: view.photos,
      video: view.video,
      description: view.description,
      masterName: view.masterName,
      workHoures: view.workHoures,
      price: view.price,
    );
  }
}
