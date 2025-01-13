import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_ui/core/utils/app_colors.dart';
import 'package:login_ui/core/utils/app_images.dart';

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
