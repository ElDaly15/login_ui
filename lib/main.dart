// ignore_for_file: depend_on_referenced_packages

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_ui/core/db/cached_helper.dart';
import 'package:login_ui/core/manager/manage_language_cubit/manage_language_cubit.dart';
import 'package:login_ui/featuers/start/presentation/views/start_app_view.dart';
import 'package:login_ui/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => BlocProvider(
        create: (context) => ManageLanguageCubit()..loadSavedLanguage(),
        child: const LoginUIApp(),
      ),
    ),
  );
}

class LoginUIApp extends StatelessWidget {
  const LoginUIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManageLanguageCubit, ManageLanguageState>(
      builder: (context, state) {
        return MaterialApp(
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: state.locale,
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          home: const StartAppView(),
        );
      },
    );
  }
}
