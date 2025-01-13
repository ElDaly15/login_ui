import 'package:flutter/material.dart';
import 'package:login_ui/core/utils/app_styles.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(
      {super.key,
      required this.color,
      required this.title,
      required this.textColor,
      required this.onPressed});
  final Color color;
  final String title;
  final Color textColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyles.font20Medium(context).copyWith(color: textColor),
      ),
    );
  }
}
