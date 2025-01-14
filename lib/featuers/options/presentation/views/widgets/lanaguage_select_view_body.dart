import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_ui/core/manager/manage_language_cubit/manage_language_cubit.dart';
import 'package:login_ui/core/utils/app_images.dart';
import 'package:login_ui/featuers/options/presentation/views/widgets/container_of_selected_lanaguage.dart';
import 'package:login_ui/featuers/options/presentation/views/widgets/options_app_bar.dart';
import 'package:intl/intl.dart';
import 'package:login_ui/generated/l10n.dart';

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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: OptionsAppBar(
            textTitle: S.of(context).selectLanguage,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: ContainerOfSelectedLanguage(
            title: 'English',
            isChecked: Intl.getCurrentLocale() == 'en',
            image: Assets.imagesEn,
            onChanged: () {
              setState(() {
                BlocProvider.of<ManageLanguageCubit>(context)
                    .changeLanguage('en');
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
            isChecked: Intl.getCurrentLocale() == 'ar',
            image: Assets.imagesAr,
            onChanged: () {
              setState(() {
                BlocProvider.of<ManageLanguageCubit>(context)
                    .changeLanguage('ar');
                index = 1;
              });
            },
          ),
        ),
      ],
    );
  }
}
