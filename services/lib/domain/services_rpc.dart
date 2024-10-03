import 'dart:isolate';

import 'package:grpc/grpc.dart';
import 'package:services/data/db.dart';
import 'package:services/data/models/work_case/work_case.dart';
import 'package:services/data/models/services/service.dart';
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
}
