import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/core/utils/app_colors.dart';
import 'package:login_ui/core/utils/app_images.dart';
import 'package:login_ui/core/utils/app_styles.dart';
import 'package:login_ui/featuers/login/presentation/views/login_view.dart';
import 'package:login_ui/featuers/register/presentation/views/register_view.dart';
import 'package:login_ui/featuers/start/presentation/views/widgets/custom_elevated_start_btm.dart';

class StartAppBody extends StatelessWidget {
  const StartAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const Spacer(),
          Center(
            child: SvgPicture.asset(
              Assets.imagesVectorMan,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Text(
            'Discover Your',
            style: TextStyles.font24SemiBold(context)
                .copyWith(color: AppColors.secondaryColorTheme, fontSize: 32),
          ),
          Text(
            'Dream Job Here',
            style: TextStyles.font24SemiBold(context)
                .copyWith(color: AppColors.secondaryColorTheme, fontSize: 32),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              'Explore all the existing job roles based on your interest and study major',
              style: TextStyles.font18Medium(context).copyWith(),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Row(
            children: [
              const Spacer(),
              CustomButtom(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const LoginView();
                  }));
                },
                color: AppColors.secondaryColorTheme,
                textColor: AppColors.mainColorTheme,
                title: 'Login',
              ),
              const SizedBox(
                width: 22,
              ),
              CustomButtom(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const RegisterView();
                  }));
                },
                color: AppColors.mainColorTheme,
                textColor: AppColors.secondTextColor,
                title: 'Register',
              ),
              const Spacer(),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
