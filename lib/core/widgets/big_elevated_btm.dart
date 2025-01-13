import 'package:flutter/material.dart';
import 'package:login_ui/core/utils/app_colors.dart';
import 'package:login_ui/core/utils/app_styles.dart';

class BigElevatedBtm extends StatelessWidget {
  const BigElevatedBtm({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            minimumSize: const Size(double.infinity, 55),
            backgroundColor: AppColors.secondaryColorTheme),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyles.font22SemiBold(context)
              .copyWith(color: AppColors.mainColorTheme),
        ));
  }
}
