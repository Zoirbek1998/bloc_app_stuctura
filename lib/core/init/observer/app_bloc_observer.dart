import 'package:flutter_bloc/flutter_bloc.dart';

import '../../error/error_object.dart';

class AppBlocObserver extends BlocObserver {
  static AppBlocObserver? _instance;

  static AppBlocObserver get instance {
    _instance ??= AppBlocObserver._init();
    return _instance!;
  }

  AppBlocObserver._init();

  @override
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    logger.i('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logger.w('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    logger.e('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    logger.f('onClose -- ${bloc.runtimeType}');
  }
}
