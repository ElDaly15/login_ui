import 'package:flutter/material.dart';
import 'package:login_ui/core/utils/app_colors.dart';
import 'package:login_ui/featuers/start/presentation/views/widgets/start_app_body.dart';

class StartAppView extends StatelessWidget {
  const StartAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.mainColorTheme,
      body: StartAppBody(),
    );
  }
}
