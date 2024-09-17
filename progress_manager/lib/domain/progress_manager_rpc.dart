import 'dart:isolate';
import 'package:grpc/grpc.dart';
import 'package:progress_manager/data/models/user_progress/user_progress.dart';

import '../data/db.dart';
// import '../env.dart';
// import '../generated/services.pbgrpc.dart' as services;
import '../generated/progress_manager.pbgrpc.dart';
import '../utils.dart';

class ProgressManagerRpc extends ProgressManagerRpcServiceBase {
  // late final ClientChannel _servicesChannel;
  // late final services.ServicesRpcClient _servicesClient;

  ProgressManagerRpc() {
    // services
    // _servicesChannel = ClientChannel(
    //   'services',
    //   port: Env.portservices,
    //   options: ChannelOptions(credentials: ChannelCredentials.insecure()),
    // );
    // _servicesClient = services.ServicesRpcClient(_servicesChannel);
  }

  // [ USER PROGRESS ]

  @override
  Future<UserProgressDto> createUserProgress(
    ServiceCall call,
    RequestDto request,
  ) async {
    try {
      // check data
      final userId = Utils.getIdFromMetadata(call);
      final userProgress = await db.userProgresses.queryUserProgress(userId);
      if (userProgress != null) {
        throw GrpcError.internal('The user already has progress');
      }

      // create user progress
      await db.userProgresses.insertOne(
        UserProgressInsertRequest(
          userId: userId,
          coins: 0,
        ),
      );

      // fetch new user progress
      final userProgressNew = await db.userProgresses.queryUserProgress(userId);
      if (userProgressNew == null) {
        throw GrpcError.notFound('User progress not found');
      }
      return await Isolate.run(() => Utils.parseUserProgress(userProgressNew));
    } catch (error) {
      throw GrpcError.internal(error.toString());
    }
  }

  @override
  Future<UserProgressDto> fetchUserProgress(
    ServiceCall call,
    RequestDto request,
  ) async {
    try {
      // check data
      final userId = Utils.getIdFromMetadata(call);

      // fetch user progress
      final userProgress = await db.userProgresses.queryUserProgress(userId);
      if (userProgress == null) {
        throw GrpcError.notFound('User progress not found');
      }
      return await Isolate.run(() => Utils.parseUserProgress(userProgress));
    } catch (error) {
      throw GrpcError.internal(error.toString());
    }
  }

  // internal method
  @override
  Future<UserProgressDto> updateUserProgress(
    ServiceCall call,
    UpdateUserProgressRequestDto request,
  ) async {
    try {
      final userId = Utils.getIdFromMetadata(call);
      final userProgress = await db.userProgresses.queryUserProgress(userId);
      if (userProgress == null) {
        throw GrpcError.invalidArgument('User progress not found');
      }

      await db.userProgresses.updateOne(
        UserProgressUpdateRequest(
          userId: userId,
          carModel: request.userProgress.hasCarModel()
              ? request.userProgress.carModel
              : null,
          vinCode: request.userProgress.hasVinCode()
              ? request.userProgress.vinCode
              : null,
          yearOfManufacture: request.userProgress.hasYearOfManufacture()
              ? request.userProgress.yearOfManufacture
              : null,
          gosNumber: request.userProgress.hasGosNumber()
              ? request.userProgress.gosNumber
              : null,
          preferences: request.userProgress.hasPreferences()
              ? request.userProgress.preferences
              : null,
        ),
      );

      final updatedUserProgress =
          await db.userProgresses.queryUserProgress(userId);
      if (updatedUserProgress == null) {
        throw GrpcError.notFound('User progress not found');
      }
      return await Isolate.run(
          () => Utils.parseUserProgress(updatedUserProgress));
    } catch (error) {
      throw GrpcError.internal(error.toString());
    }
  }

  @override
  Future<ResponseDto> deleteUserProgress(
    ServiceCall call,
    RequestDto request,
  ) async {
    try {
      // check data
      final userId = Utils.getIdFromMetadata(call);
      final userProgress = await db.userProgresses.queryUserProgress(userId);
      if (userProgress == null) {
        throw GrpcError.notFound('User progress not found');
      }
      await db.userProgresses.deleteOne(userId);
      return ResponseDto(message: 'Success');
    } catch (error) {
      throw GrpcError.internal(error.toString());
    }
  }
}
