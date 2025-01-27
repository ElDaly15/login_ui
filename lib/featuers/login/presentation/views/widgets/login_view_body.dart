import 'package:flutter/material.dart';
import 'package:login_ui/core/utils/app_colors.dart';
import 'package:login_ui/core/utils/app_styles.dart';
import 'package:login_ui/core/widgets/big_elevated_btm.dart';
import 'package:login_ui/core/widgets/custom_text_field.dart';
import 'package:login_ui/core/widgets/social_media_widget_login_and_reg.dart';
import 'package:login_ui/core/widgets/text_btm.dart';
import 'package:login_ui/featuers/login/presentation/views/widgets/custom_text_field.dart';
import 'package:login_ui/featuers/register/presentation/views/register_view.dart';
import 'package:login_ui/generated/l10n.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            const SafeArea(
              child: SizedBox(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Center(
              child: Text(
                S.of(context).loginTitle,
                style: TextStyles.font24Bold(context).copyWith(
                    color: AppColors.secondaryColorTheme, fontSize: 28),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            SizedBox(
              width: 200,
              child: Text(
                S.of(context).welcomeMessage,
                style: TextStyles.font20Bold(context).copyWith(
                  color: Theme.of(context).primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            CustomTextField(
              onChanged: (value) {},
              isObscureText: false,
              hintTitle: S.of(context).emailHint,
              isPassword: false,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.024,
            ),
            CustomTextField(
              onChanged: (value) {},
              isObscureText: true,
              hintTitle: S.of(context).passwordHint,
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            BigElevatedBtm(
              onPressed: () {},
              text: S.of(context).signInButton,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            TextBtm(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return const RegisterView();
                }), (route) {
                  return false;
                });
              },
              title: S.of(context).createNewAccount,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              S.of(context).orContinueWith,
              style: TextStyles.font14SemiBold(context)
                  .copyWith(color: AppColors.secondaryColorTheme),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const RowOfSocialMediaRegestiration(),
          ],
        ),
      ),
    );
  }
}


// ignore: must_be_immutable
