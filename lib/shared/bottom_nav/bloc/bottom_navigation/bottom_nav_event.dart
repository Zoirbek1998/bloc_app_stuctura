part of 'bottom_nav_bloc.dart';

@freezed
class BottomNavEvent with _$BottomNavEvent {
  const factory BottomNavEvent.started({required int index}) = _Started;
}

