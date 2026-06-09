import 'dart:isolate';

import 'package:grpc/grpc.dart';
import 'package:services/data/auth_client.dart';
import 'package:services/data/db.dart';
import 'package:services/data/models/work_case/work_case.dart';
import 'package:services/data/models/services/service.dart';
import 'package:services/env.dart';
import 'package:services/generated/services.pbgrpc.dart';

import '../utils.dart';

class ServicesRpc extends ServicesRpcServiceBase {
  @override
  Future<ListServiceDto> fetchAllServices(
    ServiceCall call,
    RequestDto request,
  ) async {
    final listServiceView = await db.services.queryServices();
    if (listServiceView.isEmpty) return ListServiceDto(services: []);

    final listServiceDto =
        await Isolate.run(() => Utils.parseListService(listServiceView));

    return listServiceDto;
  }

  @override
  Future<ServiceDto> fetchService(
    ServiceCall call,
    ServiceDto request,
  ) async {
    final serviceId = int.tryParse(request.id);
    if (serviceId == null) {
      throw GrpcError.invalidArgument('Service id not found');
    }
    final service = await db.services.queryService(serviceId);
    if (service == null) {
      throw GrpcError.notFound('Service not found');
    }
    return await Isolate.run(() => Utils.parseService(service));
  }

  @override
  Future<ListWorkCaseDto> fetchAllWorkCases(
    ServiceCall call,
    RequestDto request,
  ) async {
    final listWorkCaseView = await db.workCases.queryWorkCases();
    if (listWorkCaseView.isEmpty) return ListWorkCaseDto(workCases: []);

    final listWorkCaseDto =
        await Isolate.run(() => Utils.parseListWorkCase(listWorkCaseView));

    return listWorkCaseDto;
  }

  @override
  Future<WorkCaseDto> fetchWorkCase(
    ServiceCall call,
    WorkCaseDto request,
  ) async {
    final workCaseId = int.tryParse(request.id);
    if (workCaseId == null) {
      throw GrpcError.invalidArgument('Work case id not found');
    }
    final workCaseView = await db.workCases.queryWorkCase(workCaseId);
    if (workCaseView == null) {
      throw GrpcError.notFound('Work case not found');
    }
    return await Isolate.run(() => Utils.parseWorkCase(workCaseView));
  }

  // === Услуги (CRUD, только админ) ===

  @override
  Future<ServiceDto> createService(ServiceCall call, ServiceDto request) async {
    await _requireAdmin(call);
    final id = await db.services.insertOne(ServiceInsertRequest(
      title: Utils.requireLength(request.title, 'title', 2, 60),
      shortDescription:
          Utils.requireLength(request.shortDescription, 'shortDescription', 2, 120),
      description: Utils.requireLength(request.description, 'description', 2, 2000),
      photos: Utils.requireUrls(request.photos, 'photos'),
    ));
    final view = await db.services.queryService(id);
    if (view == null) throw GrpcError.internal('Created service not found');
    return Utils.parseService(view);
  }

  @override
  Future<ServiceDto> updateService(ServiceCall call, ServiceDto request) async {
    await _requireAdmin(call);
    final id = Utils.requireId(request.id, 'id');
    if (await db.services.queryService(id) == null) {
      throw GrpcError.notFound('Service not found');
    }
    await db.services.updateOne(ServiceUpdateRequest(
      id: id,
      title: Utils.requireLength(request.title, 'title', 2, 60),
      shortDescription:
          Utils.requireLength(request.shortDescription, 'shortDescription', 2, 120),
      description: Utils.requireLength(request.description, 'description', 2, 2000),
      photos: Utils.requireUrls(request.photos, 'photos'),
    ));
    final view = await db.services.queryService(id);
    if (view == null) throw GrpcError.notFound('Service not found');
    return Utils.parseService(view);
  }

  @override
  Future<ResponseDto> deleteService(ServiceCall call, ServiceDto request) async {
    await _requireAdmin(call);
    final id = Utils.requireId(request.id, 'id');
    if (await db.services.queryService(id) == null) {
      throw GrpcError.notFound('Service not found');
    }
    await db.services.deleteOne(id);
    return ResponseDto(message: 'Success');
  }

  // === Кейсы (CRUD, только админ) ===

  @override
  Future<WorkCaseDto> createWorkCase(
    ServiceCall call,
    WorkCaseDto request,
  ) async {
    await _requireAdmin(call);
    final id = await db.workCases.insertOne(WorkCaseInsertRequest(
      title: Utils.requireLength(request.title, 'title', 2, 60),
      carModel: Utils.requireLength(request.carModel, 'carModel', 1, 40),
      serviceIds: await _validateServiceIds(request.serviceIds),
      photos: Utils.requireUrls(request.photos, 'photos'),
      video: _optionalVideo(request),
      description: _optionalText(request.hasDescription(), request.description),
      masterName: _optionalText(request.hasMasterName(), request.masterName),
      workHoures: Utils.requireNonNegative(request.workHoures, 'workHoures'),
      price: Utils.requireNonNegative(request.price, 'price'),
    ));
    final view = await db.workCases.queryWorkCase(id);
    if (view == null) throw GrpcError.internal('Created work case not found');
    return Utils.parseWorkCase(view);
  }

  @override
  Future<WorkCaseDto> updateWorkCase(
    ServiceCall call,
    WorkCaseDto request,
  ) async {
    await _requireAdmin(call);
    final id = Utils.requireId(request.id, 'id');
    if (await db.workCases.queryWorkCase(id) == null) {
      throw GrpcError.notFound('Work case not found');
    }
    await db.workCases.updateOne(WorkCaseUpdateRequest(
      id: id,
      title: Utils.requireLength(request.title, 'title', 2, 60),
      carModel: Utils.requireLength(request.carModel, 'carModel', 1, 40),
      serviceIds: await _validateServiceIds(request.serviceIds),
      photos: Utils.requireUrls(request.photos, 'photos'),
      video: _optionalVideo(request),
      description: _optionalText(request.hasDescription(), request.description),
      masterName: _optionalText(request.hasMasterName(), request.masterName),
      workHoures: Utils.requireNonNegative(request.workHoures, 'workHoures'),
      price: Utils.requireNonNegative(request.price, 'price'),
    ));
    final view = await db.workCases.queryWorkCase(id);
    if (view == null) throw GrpcError.notFound('Work case not found');
    return Utils.parseWorkCase(view);
  }

  @override
  Future<ResponseDto> deleteWorkCase(
    ServiceCall call,
    WorkCaseDto request,
  ) async {
    await _requireAdmin(call);
    final id = Utils.requireId(request.id, 'id');
    if (await db.workCases.queryWorkCase(id) == null) {
      throw GrpcError.notFound('Work case not found');
    }
    await db.workCases.deleteOne(id);
    return ResponseDto(message: 'Success');
  }

  // === Вспомогательное ===

  // Доступ только админам (groupId == 88). Токен уже проверен интерсептором.
  Future<void> _requireAdmin(ServiceCall call) async {
    final userId = Utils.getIdFromMetadata(call);
    final int groupId;
    try {
      groupId = await AuthClient.fetchGroupId(userId);
    } catch (e) {
      throw GrpcError.internal('Failed to verify user role: $e');
    }
    if (groupId != Env.adminGroupId) {
      throw GrpcError.permissionDenied('Admin only');
    }
  }

  // Проверяет, что каждый serviceId — число и такая услуга существует.
  Future<List<int>> _validateServiceIds(List<String> ids) async {
    final result = <int>[];
    for (final raw in ids) {
      final id = Utils.requireId(raw, 'serviceIds');
      if (await db.services.queryService(id) == null) {
        throw GrpcError.invalidArgument('Service $id does not exist');
      }
      result.add(id);
    }
    return result;
  }

  // Опциональный URL видео: валидируется, только если непустой.
  String? _optionalVideo(WorkCaseDto request) {
    if (!request.hasVideo() || request.video.trim().isEmpty) return null;
    return Utils.requireUrl(request.video.trim(), 'video');
  }

  // Опциональный текст: trim, либо null если не задан/пустой.
  String? _optionalText(bool has, String value) {
    if (!has) return null;
    final trimmed = value.trim();
    return trimmed.isEmpty ? null : trimmed;
  }
}
