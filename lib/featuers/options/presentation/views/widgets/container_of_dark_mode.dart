import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_ui/core/db/cached_helper.dart';
import 'package:login_ui/core/utils/app_colors.dart';
import 'package:login_ui/core/utils/app_styles.dart';

import '../../../../../core/manager/toggle_darkMode_cubit/toggle_dark_mode_cubit.dart';
import '../../../../../generated/l10n.dart';

class ContainerOfDarkMode extends StatefulWidget {
  const ContainerOfDarkMode({super.key});

  @override
  State<ContainerOfDarkMode> createState() => _ContainerOfDarkModeState();
}

class _ContainerOfDarkModeState extends State<ContainerOfDarkMode> {
  bool valueOfDark = CacheHelper().getData(key: 'isDark') ?? false;

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
              thumbColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.pressed)) {
                    return AppColors.mainColorTheme;
                  }
                  return Theme.of(context).primaryColor;
                },
              ),
              value: valueOfDark,
              onChanged: (value) {
                BlocProvider.of<ToggleDarkModeCubit>(context)
                    .toggleDarkMode(value);
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
