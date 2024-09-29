import 'package:crxt_muse/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileImageScroller extends StatelessWidget {
  const ProfileImageScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(AppStrings.kidImage),
            Positioned(
              top: 40,
              left: 10,
              child: SvgPicture.asset(
                AppStrings.museKidfitSecure,
                height: 80,
                width: 80,
              ),
            ),
            Positioned(
              bottom: 40,
              right: 10,
              child: SvgPicture.asset(
                AppStrings.museKidfitShoe,
                height: 80,
                width: 80,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(AppStrings.kidName,style: Theme.of(context).textTheme.displayMedium),
      ],
    );
  }
}
