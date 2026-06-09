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

  // === Валидация (сервер — источник правды) ===

  // Обрезает пробелы и проверяет длину [min, max], иначе INVALID_ARGUMENT.
  static String requireLength(String value, String field, int min, int max) {
    final trimmed = value.trim();
    if (trimmed.length < min || trimmed.length > max) {
      throw GrpcError.invalidArgument(
        '$field must be between $min and $max characters',
      );
    }
    return trimmed;
  }

  // Проверяет, что число >= 0.
  static double requireNonNegative(double value, String field) {
    if (value.isNaN || value < 0) {
      throw GrpcError.invalidArgument('$field must be >= 0');
    }
    return value;
  }

  // Проверяет валидность http(s)-URL.
  static String requireUrl(String value, String field) {
    final uri = Uri.tryParse(value);
    if (uri == null ||
        !uri.hasScheme ||
        (uri.scheme != 'http' && uri.scheme != 'https') ||
        !uri.hasAuthority) {
      throw GrpcError.invalidArgument('$field must be a valid http(s) URL');
    }
    return value;
  }

  // Проверяет список URL.
  static List<String> requireUrls(List<String> values, String field) {
    return values.map((v) => requireUrl(v, field)).toList();
  }

  // Парсит id (string -> int), иначе INVALID_ARGUMENT.
  static int requireId(String value, String field) {
    final id = int.tryParse(value.trim());
    if (id == null) throw GrpcError.invalidArgument('$field is invalid');
    return id;
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
        serviceIds: view.serviceIds.map((item) => item.toString()),
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
      serviceIds: view.serviceIds.map((item) => item.toString()),
      photos: view.photos,
      video: view.video,
      description: view.description,
      masterName: view.masterName,
      workHoures: view.workHoures,
      price: view.price,
    );
  }
}
