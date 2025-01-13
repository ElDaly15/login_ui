import 'package:flutter/material.dart';
import 'package:login_ui/featuers/options/presentation/views/widgets/container_of_dark_mode.dart';
import 'package:login_ui/featuers/options/presentation/views/widgets/container_of_lang.dart';
import 'package:login_ui/featuers/options/presentation/views/widgets/options_app_bar.dart';

class OptionsViewBody extends StatelessWidget {
  const OptionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SafeArea(child: SizedBox()),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: OptionsAppBar(
            textTitle: 'Options',
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ContainerOfLanguage(),
        SizedBox(
          height: 10,
        ),
        ContainerOfDarkMode(),
      ],
    );
  }
}
