import 'package:flutter/material.dart';
import 'package:login_ui/featuers/options/presentation/views/widgets/lanaguage_select_view_body.dart';

class LanguageSelectView extends StatelessWidget {
  const LanguageSelectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: const LanaguageSelectViewBody(),
    );
  }
}
