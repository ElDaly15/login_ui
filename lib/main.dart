import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/featuers/start/presentation/views/start_app_view.dart';

void main() {
  runApp(
      DevicePreview(enabled: true, builder: (context) => const LoginUIApp()));
}

class LoginUIApp extends StatelessWidget {
  const LoginUIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const StartAppView(),
    );
  }
}
