// ignore_for_file: unnecessary_import

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/core/db/cached_helper.dart';
import 'package:login_ui/core/utils/theme.dart';
import 'package:meta/meta.dart';

part 'toggle_dark_mode_state.dart';

class ToggleDarkModeCubit extends Cubit<ToggleDarkModeState> {
  ToggleDarkModeCubit() : super(ToggleDarkModeInitial(themeData: lightTheme));

  void toggleDarkMode(bool isDark) {
    if (isDark) {
      CacheHelper().saveData(key: 'isDark', value: true);
      emit(ToggleDarkModeInitial(themeData: darkTheme));
    } else {
      CacheHelper().saveData(key: 'isDark', value: false);
      emit(ToggleDarkModeInitial(themeData: lightTheme));
    }
  }

  void loadSavedTheme() async {
    final bool? isDark = await CacheHelper().getData(key: 'isDark');
    if (isDark != null) {
      emit(ToggleDarkModeInitial(themeData: isDark ? darkTheme : lightTheme));
    }
  }
}
