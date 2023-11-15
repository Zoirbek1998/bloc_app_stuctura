import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'core/app/my_app.dart';
import 'core/di/injection.dart';
import 'core/init/observer/app_bloc_observer.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection();
  Bloc.observer = AppBlocObserver.instance;

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  runApp(const MyApp());
}


