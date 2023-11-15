import 'package:bloc_app_stuctura/core/constants/enums/network_exception_type.dart';
import 'package:dio/dio.dart';

class NetworkException implements Exception {
  final String name, message;
  final String? code;
  final int? statusCode;
  final NetworkExceptionType exceptionType;

  NetworkException({
    required this.message,
    this.code,
    int? statusCode,
    this.exceptionType = NetworkExceptionType.apiException,
  })  : statusCode = statusCode ?? 500,
        name = exceptionType.name;

  factory NetworkException.fromDioException(Exception error){
    try{
      if (error is DioException) {
        switch (error.type) {
          case DioExceptionType.cancel:
            return NetworkException(
              exceptionType: NetworkExceptionType.cancelException,
              statusCode: error.response?.statusCode,
              message: 'Request cancelled prematurely',
            );
          case DioExceptionType.connectionTimeout:
            return NetworkException(
              exceptionType: NetworkExceptionType.connectTimeoutException,
              statusCode: error.response?.statusCode,
              message: 'Connection not established',
            );
          case DioExceptionType.sendTimeout:
            return NetworkException(
              exceptionType: NetworkExceptionType.sendTimeoutException,
              statusCode: error.response?.statusCode,
              message: 'Failed to send',
            );
          case DioExceptionType.receiveTimeout:
            return NetworkException(
              exceptionType: NetworkExceptionType.receiveTimeoutException,
              statusCode: error.response?.statusCode,
              message: 'Failed to receive',
            );
          case DioExceptionType.badResponse:
          case DioExceptionType.unknown:
            if (error.message!.contains(NetworkExceptionType.socketException.name)) {
              return NetworkException(
                exceptionType: NetworkExceptionType.fetchDataException,
                statusCode: error.response?.statusCode,
                message: 'No internet connectivity',
              );
            }
            if (error.response?.data == null) {
              final name = error.response?.data['headers']['code'] as String;

              if (name == NetworkExceptionType.tokenExpiredException.name) {
                return NetworkException(
                  exceptionType: NetworkExceptionType.tokenExpiredException,
                  statusCode: error.response?.statusCode,
                  message: error.message??"",
                );
              }
              return NetworkException(
                exceptionType: NetworkExceptionType.unrecognizedException,
                statusCode: error.response?.statusCode,
                message: error.response?.statusMessage ?? 'Unknown',
              );
            }
            return NetworkException(
              message: error.response?.statusMessage ?? error.message??"",
              statusCode: error.response?.statusCode,
            );
          case DioExceptionType.badCertificate:
            return NetworkException(
              exceptionType: NetworkExceptionType.badCertificate,
              statusCode: error.response?.statusCode,
              message: 'Bad certificate',
            );
          case DioExceptionType.connectionError:
            return NetworkException(
              exceptionType: NetworkExceptionType.connectionError,
              statusCode: error.response?.statusCode,
              message: 'Connection error',
            );
        }
      } else {
        return NetworkException(
          exceptionType: NetworkExceptionType.unrecognizedException,
          message: 'Error unrecognized',
        );
      }
    }on FormatException catch (e){
      return NetworkException(
        exceptionType: NetworkExceptionType.formatException,
        message: e.message,
      );
    }on Exception catch (_){
      return NetworkException(
        exceptionType: NetworkExceptionType.unrecognizedException,
        message: 'Error unrecognized',
      );
    }
  }
}
