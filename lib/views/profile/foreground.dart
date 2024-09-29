import 'package:crxt_muse/constants/colors.dart';
import 'package:crxt_muse/constants/strings.dart';
import 'package:crxt_muse/views/profile/widgets/Image_scroller.dart';
import 'package:crxt_muse/views/profile/widgets/custom_card.dart';
import 'package:crxt_muse/shared/widget/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared/widget/divider_welcome.dart';
import '../../shared/widget/menu_button.dart';

class ProfileForeground extends StatelessWidget {
  const ProfileForeground({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLogo(),
                MenuButton()
              ],
            ),
            SizedBox(height: screenHeight * 0.05),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const ProfileImageScroller(),
                  const SizedBox(height: 20),
                  const AppDivider(color: AppColors.primaryGreen),
                  const SizedBox(height: 30),
                  ProfileCustomCard(
                    color: AppColors.primaryGreen,
                    title: AppStrings.trainingTitle,
                    subtitle: AppStrings.trainingSubtitle,
                    imageString: AppStrings.museKidfitProfileIcon,
                    isBubbleTop: true,
                    onTap: ()=>Get.toNamed('/dashboard'),
                  ),
                  const SizedBox(height: 20),
                  const ProfileCustomCard(
                    color: AppColors.primaryBlue,
                    title: AppStrings.videoTitle,
                    subtitle: AppStrings.videoSubtitle,
                    imageString: AppStrings.museKidfitVideoIcon,
                    isBubbleTop: false,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
