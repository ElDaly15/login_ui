import 'package:flutter/material.dart';
import 'package:login_ui/core/utils/app_colors.dart';
import 'package:login_ui/core/utils/app_styles.dart';

class OptionsAppBar extends StatelessWidget {
  const OptionsAppBar({super.key, required this.textTitle});
  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.secondTextColor,
          ),
        ),
        Text(textTitle, style: TextStyles.font22SemiBold(context)),
      ],
    );
  }
}
