import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_ui/core/utils/app_colors.dart';
import 'package:login_ui/core/utils/app_styles.dart';
import 'package:login_ui/featuers/options/presentation/views/language_select_view.dart';

class ContainerOfLanguage extends StatelessWidget {
  const ContainerOfLanguage({super.key});

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
              FontAwesomeIcons.earthAmericas,
              color: AppColors.secondTextColor,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              'Language',
              style: TextStyles.font18Medium(context),
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  'English',
                  style: TextStyles.font18Medium(context)
                      .copyWith(color: AppColors.firstTextColor),
                ),
                IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const LanguageSelectView();
                    }));
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.secondTextColor,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
