import 'package:flutter/material.dart';
import 'package:login_ui/core/utils/app_colors.dart';
import 'package:login_ui/core/utils/app_styles.dart';
import 'package:msh_checkbox/msh_checkbox.dart';

class ContainerOfSelectedLanguage extends StatelessWidget {
  const ContainerOfSelectedLanguage(
      {super.key,
      required this.onChanged,
      required this.isChecked,
      required this.title,
      required this.image});
  final VoidCallback onChanged;
  final bool isChecked;
  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            height: 30,
            width: 30,
            image,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyles.font20Regular(context).copyWith(
            color: Theme.of(context).primaryColor,
          ),
        ),
        const Spacer(),
        MSHCheckbox(
          size: 22,
          value: isChecked,
          colorConfig: MSHColorConfig.fromCheckedUncheckedDisabled(
            uncheckedColor: const Color.fromARGB(255, 48, 45, 45),
            checkedColor: AppColors.secondaryColorTheme,
          ),
          style: MSHCheckboxStyle.stroke,
          onChanged: (_) => onChanged(),
        ),
      ],
    );
  }
}
