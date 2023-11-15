
import './injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';


final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection() async => getIt.init();
