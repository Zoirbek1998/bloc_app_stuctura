import 'package:bloc_app_stuctura/core/constants/network/network_constants.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio()
    ..options.baseUrl = NetworkConstants.baseUrl
    ..options.connectTimeout =  const Duration(milliseconds: NetworkConstants.connectionTimeout)
    ..options.receiveTimeout = const Duration(milliseconds: NetworkConstants.receiveTimeout)
    ..options.responseType = ResponseType.json
    ..interceptors.clear()
    ..interceptors.add(PrettyDioLogger(responseBody: false));
  // if (kDebugMode)
}


class $RegisterModule extends RegisterModule {}