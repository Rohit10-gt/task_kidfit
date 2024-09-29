import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants/strings.dart';

class ProfileBackground extends StatelessWidget {
  const ProfileBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: 120,
            right: 0,
            child: SvgPicture.asset(
              AppStrings.museKidfitLaptop,
              height: 80,
              width: 80,
            ),
          ),
          Positioned(
            top: 350,
            left: 0,
            child: SvgPicture.asset(
              AppStrings.museKidfitApple,
              height: 80,
              width: 80,
            ),
          ),
          Positioned(
            bottom: 290,
            right: 15,
            child: SvgPicture.asset(
              AppStrings.museKidfitFootball,
              height: 65,
              width: 65,
            ),
          ),
        ],
      ),
    );
  }
}
