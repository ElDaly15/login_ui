import 'package:flutter/material.dart';
import 'package:login_ui/featuers/options/presentation/views/widgets/container_of_dark_mode.dart';
import 'package:login_ui/featuers/options/presentation/views/widgets/container_of_lang.dart';
import 'package:login_ui/featuers/options/presentation/views/widgets/options_app_bar.dart';
import 'package:login_ui/generated/l10n.dart';

class OptionsViewBody extends StatelessWidget {
  const OptionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SafeArea(child: SizedBox()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: OptionsAppBar(
            textTitle: S.of(context).Options,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const ContainerOfLanguage(),
        const SizedBox(
          height: 10,
        ),
        const ContainerOfDarkMode(),
      ],
    );
  }
}
