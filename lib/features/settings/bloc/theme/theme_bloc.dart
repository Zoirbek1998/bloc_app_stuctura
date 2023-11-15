import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/init/theme/app_theme.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

@injectable
class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super( ThemeState.theme(currentTheme: kAppThemeData[AppTheme.Light]!)) {
    on<ThemeEvent>((event, emit) async {

        if (state.currentTheme == kAppThemeData[AppTheme.Dark]!) {
          emit(ThemeState.theme(currentTheme: kAppThemeData[AppTheme.Light]!));
        } else if (state.currentTheme == kAppThemeData[AppTheme.Light]!) {
          emit(ThemeState.theme(currentTheme: kAppThemeData[AppTheme.Dark]!));
        }

    });

  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    try {
      if (json['light'] as bool) {
        return ThemeState.theme(currentTheme: kAppThemeData[AppTheme.Light]!);
      }
      return ThemeState.theme(currentTheme: kAppThemeData[AppTheme.Dark]!);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    try {
      return {
        'light': state.currentTheme == kAppThemeData[AppTheme.Light]!,
      };
    } catch (e) {
      return null;
    }
  }
}
