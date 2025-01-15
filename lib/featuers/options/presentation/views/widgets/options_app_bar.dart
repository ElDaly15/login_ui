import 'package:flutter/material.dart';
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
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Text(textTitle,
            style: TextStyles.font22SemiBold(context).copyWith(
              color: Theme.of(context).primaryColor,
            )),
      ],
    );
  }
}
