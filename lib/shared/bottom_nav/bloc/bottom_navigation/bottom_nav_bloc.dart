import 'package:bloc/bloc.dart';
import 'package:bloc_app_stuctura/core/error/error_object.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';



part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';
part 'bottom_nav_bloc.freezed.dart';

@injectable
class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super( const BottomNavState.initial(index: 0)) {
    on<BottomNavEvent>((event, emit) {
      emit(state.copyWith(index: event.index));
    });
  }
}

