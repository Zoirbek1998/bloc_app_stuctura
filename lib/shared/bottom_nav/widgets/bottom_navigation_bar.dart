
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/init/routes/router_path.dart';
import '../bloc/bottom_navigation/bottom_nav_bloc.dart';






class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return BottomNavigationBar(
          backgroundColor: Theme
              .of(context)
              .scaffoldBackgroundColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: state.index,
          onTap: (index){
            _onItemTapped(index,context);

            BlocProvider.of<BottomNavBloc>(context)
                .add(BottomNavEvent.started(index: index));
          },
          selectedFontSize: Theme
              .of(context)
              .textTheme
              .bodyMedium!
              .fontSize!,
          unselectedFontSize: Theme
              .of(context)
              .textTheme
              .bodyMedium!
              .fontSize!,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Theme
                    .of(context)
                    .bottomNavigationBarTheme
                    .unselectedItemColor,
                size: 24,
              ),
              label: 'Home',
              activeIcon: Icon(
                Icons.home,
                color: Theme
                    .of(context)
                    .bottomNavigationBarTheme
                    .selectedItemColor,
                size: 24,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                color: Theme
                    .of(context)
                    .bottomNavigationBarTheme
                    .unselectedItemColor,
                size: 24,
              ),
              label: 'Spells',
              activeIcon: Icon(
                Icons.search,
                color: Theme
                    .of(context)
                    .bottomNavigationBarTheme
                    .selectedItemColor,
                size: 24,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
                color: Theme
                    .of(context)
                    .bottomNavigationBarTheme
                    .unselectedItemColor,
                size: 24,
              ),
              label: 'Setting',
              activeIcon: Icon(
                Icons.settings,
                color: Theme
                    .of(context)
                    .bottomNavigationBarTheme
                    .selectedItemColor,
                size: 24,
              ),
            ),
          ],
        );
      },
    );
  }
}

void _onItemTapped(int index, BuildContext context) {
  switch (index) {
    case 0:
      context.go(RouterPath.instance.characters);
      break;
    case 1:
      context.go(RouterPath.instance.spells);
      break;
    case 2:
      context.go(RouterPath.instance.setting);
      break;
    default:
      context.go(RouterPath.instance.characters);
      break;
  }
}

