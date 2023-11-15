import 'package:bloc_app_stuctura/core/di/injection.dart';
import 'package:bloc_app_stuctura/core/init/routes/router_path.dart';
import 'package:bloc_app_stuctura/features/characters/pesentation/bloc/characters/characters_bloc.dart';
import 'package:bloc_app_stuctura/features/characters/pesentation/screens/character_detail/character_detail.dart';
import 'package:bloc_app_stuctura/features/settings/screen/setting_screen.dart';
import 'package:bloc_app_stuctura/features/spells/pesentation/bloc/spells/spells_bloc.dart';
import 'package:bloc_app_stuctura/shared/domain/entities/character/character.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../features/characters/pesentation/screens/characters/characters_page.dart';
import '../../../features/spells/pesentation/screens/spells_page.dart';
import '../../../shared/bottom_nav/bloc/bottom_navigation/bottom_nav_bloc.dart';
import '../../../shared/bottom_nav/custom_nav_bar.dart';

enum RouterName {
  characters,
  characterDetail,
  spells,
  settings,
}

class AppRoutes {
  static AppRoutes? _instance;

  static AppRoutes get instance {
    _instance ??= AppRoutes._init();
    return _instance!;
  }

  AppRoutes._init();

  late final GoRouter router = GoRouter(
      initialLocation: RouterPath.instance.characters,
      routes: <RouteBase>[
        ShellRoute(
          builder: (BuildContext context, GoRouterState state, Widget child) {
            return BlocProvider(
              create: (context) =>
              getIt<BottomNavBloc>()
                ..add(const BottomNavEvent.started(index: 0)),
              child: CustomNavBar(
                child: child,
              ),
            );
          },
          routes: <RouteBase>[
            GoRoute(
              name: RouterName.characters.name,
              path: RouterPath.instance.characters,
              builder: (context, state) {
                return BlocProvider(
                  create: (context) =>
                  getIt<CharactersBloc>()
                    ..add(const CharactersEvent.fetchAllCharacters()),
                  child: const CharactersPage(),
                );
              },
              routes: <RouteBase>[
                GoRoute(
                    name: RouterName.characterDetail.name,
                    path: RouterPath.instance.characterDetail,
                    builder: (context, state) {
                      return CharacterDetail(
                        character: state.extra as Character,
                      );
                    })
              ],
            ),
            GoRoute(
              name: RouterName.spells.name,
              path: RouterPath.instance.spells,
              builder: (context, state) {
                return BlocProvider(
                  create: (context) => getIt<SpellsBloc>()..add(const SpellsEvent.fetchSpells()),
                  child:const SpellsPage(),
                );
              },
            ),
            GoRoute(
              name: RouterName.settings.name,
              path: RouterPath.instance.setting,
              builder: (context, state) {
                return const SettingScreen();
              },
            ),
          ],
        )
      ]);
}
