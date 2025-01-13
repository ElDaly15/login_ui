import 'package:flutter/material.dart';
import 'package:login_ui/core/utils/app_colors.dart';
import 'package:login_ui/core/utils/app_styles.dart';

class TextBtm extends StatelessWidget {
  const TextBtm({super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyles.font14SemiBold(context)
            .copyWith(color: AppColors.firstTextColor),
      ),
    );
  }
}
