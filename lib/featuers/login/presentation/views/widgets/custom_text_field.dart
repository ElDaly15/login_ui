import 'package:flutter/material.dart';
import 'package:login_ui/core/utils/app_colors.dart';
import 'package:login_ui/core/utils/app_styles.dart';
import 'package:login_ui/generated/l10n.dart';

class CustomTextButtom extends StatelessWidget {
  const CustomTextButtom({super.key, required this.onPressed});
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          S.of(context).forgotPassword,
          style: TextStyles.font18Bold(context)
              .copyWith(color: AppColors.secondaryColorTheme),
        ));
  }
}
