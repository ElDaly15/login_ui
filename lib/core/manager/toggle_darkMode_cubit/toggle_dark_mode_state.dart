part of 'toggle_dark_mode_cubit.dart';

@immutable
sealed class ToggleDarkModeState {
  final ThemeData themeData;
  const ToggleDarkModeState({required this.themeData});
}

final class ToggleDarkModeInitial extends ToggleDarkModeState {
  const ToggleDarkModeInitial({required super.themeData});
}

final class ToggleDarkModeChanged extends ToggleDarkModeState {
  const ToggleDarkModeChanged({required super.themeData});
}
