import 'package:grpc/grpc.dart';
import 'package:services/generated/services.pbgrpc.dart';

class ServicesRpc extends ServicesRpcServiceBase {
  // @override
  // Future<MarkazDto> fetchMarkaz(ServiceCall call, MarkazDto request) async {
  //   final markazId = int.tryParse(request.id);
  //   if (markazId == null) {
  //     throw GrpcError.invalidArgument('Markaz id not found');
  //   }
  //   final markaz = await db.markazs.queryMarkaz(markazId);
  //   if (markaz == null) {
  //     throw GrpcError.notFound('Markaz not found');
  //   }
  //   return await Isolate.run(() => Utils.parseMarkaz(markaz));
  // }

  // @override
  // Future<ListMarkazDto> fetchAllMarkazes(
  //   ServiceCall call,
  //   RequestDto request,
  // ) async {
  //   // // redis
  //   // const String cacheKey = 'markazes';
  //   // var cached = await redis.get(cacheKey);
  //   // if (cached != null) {
  //   //   return ListMarkazDto.fromJson(cached);
  //   // }
  //   final listMarkaz = await db.markazs.queryMarkazs();
  //   if (listMarkaz.isEmpty) return ListMarkazDto(markazes: []);

  //   final listMarkazDto =
  //       await Isolate.run(() => Utils.parseMarkazes(listMarkaz));
  //   // await redis.set(cacheKey, listMarkazDto.writeToJson());

  //   return listMarkazDto;
  // }

  @override
  Future<ListCasesDto> fetchAllCases(ServiceCall call, RequestDto request) {
    // TODO: implement fetchAllCases
    throw UnimplementedError();
  }

  @override
  Future<ListServiceDto> fetchAllServices(
      ServiceCall call, RequestDto request) {
    // TODO: implement fetchAllServices
    throw UnimplementedError();
  }

  @override
  Future<CaseDto> fetchCase(ServiceCall call, CaseDto request) {
    // TODO: implement fetchCase
    throw UnimplementedError();
  }

  @override
  Future<ServiceDto> fetchService(ServiceCall call, ServiceDto request) {
    // TODO: implement fetchService
    throw UnimplementedError();
  }
}
