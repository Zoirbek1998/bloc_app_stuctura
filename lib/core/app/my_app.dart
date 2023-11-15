import 'package:bloc_app_stuctura/core/di/injection.dart';
import 'package:bloc_app_stuctura/features/settings/bloc/theme/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../init/routes/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          getIt<ThemeBloc>()
            ..add(const ThemeEvent.theme()),
        ),
      ],
      child: FutureBuilder(
        future: SystemChrome.setPreferredOrientations(
          [
            DeviceOrientation.portraitUp,
          ],
        ),
        builder: (context, snapshot) {
          return BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              if (snapshot.connectionState == ConnectionState.done){
                return MaterialApp.router(
                  title: 'Harry Potter',
                  debugShowCheckedModeBanner: false,
                  theme: state.currentTheme,
                  routerConfig: AppRoutes.instance.router,
                );
              }else{
                return MaterialApp(
                  title: 'Sirate Mustaqeem',
                  debugShowCheckedModeBanner: false,
                  color: Colors.white,
                  home: Container(),
                );
              }
            },
          );
        },
      ),
    );
  }
}
