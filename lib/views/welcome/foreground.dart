import 'package:animate_do/animate_do.dart';
import 'package:crxt_muse/constants/colors.dart';
import 'package:crxt_muse/shared/widget/divider_welcome.dart';
import 'package:crxt_muse/views/welcome/widgets/play_button.dart';
import 'package:crxt_muse/views/welcome/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/strings.dart';
import '../../shared/widget/app_logo.dart';

class WelcomeForeground extends StatelessWidget {
  const WelcomeForeground({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppLogo(),
              SizedBox(
                height: screenHeight * 0.15,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: FadeInUp(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.welcomeHeadline,
                        style: Theme.of(context).textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.015),
                      const AppDivider(),
                      SizedBox(height: screenHeight * 0.015),
                      Text(
                        AppStrings.welcomeDescription,
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.08),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SignUpButton(onPressed: ()=>Get.toNamed('/profile')),
                          const SizedBox(width: 16),
                          PlayButton(onPressed: ()=>Get.toNamed('/profile')),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.10),
                      Container(
                        height: screenHeight * 0.075,
                        width: screenWidth * 0.7,
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.primaryOrange,
                        ),
                        child: Center(
                          child: Text(
                            AppStrings.fitnessMessage,
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
