import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants/strings.dart';

class WelcomeBackground extends StatelessWidget {
  const WelcomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: 100,
            right: 0,
            child: SvgPicture.asset(
              AppStrings.museKidfitAward,
              height: 100,
              width: 100,
            ),
          ),
          Positioned(
            top: 150,
            right: 120,
            child: SvgPicture.asset(
              AppStrings.museKidfitHeart,
              height: 100,
              width: 100,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.3,
            right: 40,
            child: SvgPicture.asset(
              AppStrings.museKidfitArrow,
              height: 100,
              width: 100,
            ),
          ),
          Positioned(
            bottom: 90,
            left: 0,
            child: SvgPicture.asset(
              AppStrings.museKidfitRocket,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
