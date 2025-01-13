import 'package:flutter/material.dart';
import 'package:login_ui/core/utils/app_colors.dart';
import 'package:login_ui/core/utils/app_styles.dart';

class CustomTextButtom extends StatelessWidget {
  const CustomTextButtom({super.key, required this.onPressed});
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          'Forgot Your Password ?',
          style: TextStyles.font18Bold(context)
              .copyWith(color: AppColors.secondaryColorTheme),
        ));
  }
}
