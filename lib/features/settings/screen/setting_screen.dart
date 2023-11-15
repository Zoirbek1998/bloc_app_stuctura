import 'package:bloc_app_stuctura/core/init/theme/app_theme.dart';
import 'package:bloc_app_stuctura/features/app_widgets/focus_widget.dart';
import 'package:bloc_app_stuctura/features/settings/bloc/theme/theme_bloc.dart';
import 'package:bloc_app_stuctura/features/settings/screen/widgets/change_theme_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FocusWidget(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Setting",
              style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium,
            ),
          ),
          body: _buildSettingWidget(context),
        ));
  }

  Widget _buildSettingWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Theme',
            style: Theme
                .of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Theme
                .of(context)
                .primaryColor),
          ),
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return ChangeThemeSwitch(
                  value: state.currentTheme.brightness == Brightness.dark,
                  onChanged: (_) {
                    BlocProvider.of<ThemeBloc>(context).add(ThemeEvent.theme());
                  });
            },
          )
        ],
      ),
    );
  }
}
