// ignore_for_file: depend_on_referenced_packages

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/featuers/start/presentation/views/start_app_view.dart';
import 'package:login_ui/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
      DevicePreview(enabled: true, builder: (context) => const LoginUIApp()));
}

class LoginUIApp extends StatelessWidget {
  const LoginUIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('en'),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const StartAppView(),
    );
  }
}
