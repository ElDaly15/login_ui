import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/core/utils/app_colors.dart';
import 'package:login_ui/core/utils/app_images.dart';
import 'package:login_ui/core/utils/app_styles.dart';
import 'package:login_ui/core/widgets/big_elevated_btm.dart';
import 'package:login_ui/core/widgets/custom_text_field.dart';
import 'package:login_ui/core/widgets/text_btm.dart';
import 'package:login_ui/featuers/login/presentation/views/widgets/custom_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          const SafeArea(
            child: SizedBox(),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              'Login here',
              style: TextStyles.font24Bold(context)
                  .copyWith(color: AppColors.secondaryColorTheme, fontSize: 28),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 200,
            child: Text(
              'Welcome back you\'ve been missed!',
              style: TextStyles.font20Bold(context),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 50),
          CustomTextField(
            onChanged: (value) {},
            isObscureText: false,
            hintTitle: 'Email',
            isPassword: false,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onChanged: (value) {},
            isObscureText: true,
            hintTitle: 'Password',
            isPassword: true,
          ),
          const SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CustomTextButtom(
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const BigElevatedBtm(
            text: 'Sign in',
          ),
          const SizedBox(
            height: 15,
          ),
          const TextBtm(
            title: 'Create new account',
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Or continue with',
            style: TextStyles.font14SemiBold(context)
                .copyWith(color: AppColors.secondaryColorTheme),
          ),
          const SizedBox(
            height: 20,
          ),
          const RowOfSocialMediaRegestiration(),
          const Spacer(),
        ],
      ),
    );
  }
}

class ContainerOfSocialMedia extends StatelessWidget {
  const ContainerOfSocialMedia(
      {super.key, required this.image, required this.onTap});
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
        decoration: const BoxDecoration(
          color: AppColors.containerColors,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: SvgPicture.asset(image),
      ),
    );
  }
}

class RowOfSocialMediaRegestiration extends StatelessWidget {
  const RowOfSocialMediaRegestiration({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        ContainerOfSocialMedia(
          image: Assets.imagesGoogle,
          onTap: () {},
        ),
        const SizedBox(
          width: 10,
        ),
        ContainerOfSocialMedia(
          image: Assets.imagesFacebook,
          onTap: () {},
        ),
        const SizedBox(
          width: 10,
        ),
        ContainerOfSocialMedia(
          image: Assets.imagesApple,
          onTap: () {},
        ),
        const Spacer(),
      ],
    );
  }
}

// ignore: must_be_immutable
