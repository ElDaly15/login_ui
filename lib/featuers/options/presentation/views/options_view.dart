import 'package:flutter/material.dart';
import 'package:login_ui/featuers/options/presentation/views/widgets/options_view_body.dart';

class OptionsView extends StatelessWidget {
  const OptionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: const OptionsViewBody(),
    );
  }
}
