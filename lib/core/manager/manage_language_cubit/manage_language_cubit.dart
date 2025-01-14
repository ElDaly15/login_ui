import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/core/db/cached_helper.dart';
import 'package:meta/meta.dart';

part 'manage_language_state.dart';

class ManageLanguageCubit extends Cubit<ManageLanguageState> {
  ManageLanguageCubit() : super(const ManageLanguageInitial(Locale('en')));

  Future<void> loadSavedLanguage() async {
    final String? savedLang = CacheHelper().getDataString(key: 'lang');
    emit(ManageLanguageChanged(Locale(savedLang ?? 'en')));
  }

  Future<void> changeLanguage(String langCode) async {
    await CacheHelper().saveData(key: 'lang', value: langCode);
    emit(ManageLanguageChanged(Locale(langCode)));
  }
}
