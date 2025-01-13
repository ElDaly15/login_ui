import 'package:flutter/material.dart';
import 'package:login_ui/core/utils/app_images.dart';
import 'package:login_ui/featuers/options/presentation/views/widgets/container_of_selected_lanaguage.dart';
import 'package:login_ui/featuers/options/presentation/views/widgets/options_app_bar.dart';

class LanaguageSelectViewBody extends StatefulWidget {
  const LanaguageSelectViewBody({super.key});

  @override
  State<LanaguageSelectViewBody> createState() =>
      _LanaguageSelectViewBodyState();
}

class _LanaguageSelectViewBodyState extends State<LanaguageSelectViewBody> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SafeArea(child: SizedBox()),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: OptionsAppBar(
            textTitle: 'Select Language',
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: ContainerOfSelectedLanguage(
            title: 'English',
            isChecked: index == 0,
            image: Assets.imagesEn,
            onChanged: () {
              setState(() {
                index = 0;
              });
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: ContainerOfSelectedLanguage(
            title: 'Arabic',
            isChecked: index == 1,
            image: Assets.imagesAr,
            onChanged: () {
              setState(() {
                index = 1;
              });
            },
          ),
        ),
      ],
    );
  }
}
