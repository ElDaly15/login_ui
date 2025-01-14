import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_ui/core/utils/app_colors.dart';
import 'package:login_ui/core/utils/app_styles.dart';

import '../../../../../generated/l10n.dart';

class ContainerOfDarkMode extends StatefulWidget {
  const ContainerOfDarkMode({super.key});

  @override
  State<ContainerOfDarkMode> createState() => _ContainerOfDarkModeState();
}

class _ContainerOfDarkModeState extends State<ContainerOfDarkMode> {
  bool valueOfDark = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Container(
        decoration: const BoxDecoration(
            color: AppColors.containerColors,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          children: [
            const SizedBox(
              width: 12,
            ),
            const Icon(
              FontAwesomeIcons.moon,
              color: AppColors.secondTextColor,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              S.of(context).darkMode,
              style: TextStyles.font18Medium(context),
            ),
            const Spacer(),
            Switch(
              activeTrackColor: AppColors.secondaryColorTheme,
              value: valueOfDark,
              onChanged: (value) {
                valueOfDark = value;
                setState(() {});
              },
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
