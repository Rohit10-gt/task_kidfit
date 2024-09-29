import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class AppDivider extends StatelessWidget {
  final Color color;
  const AppDivider({super.key, this.color = AppColors.primaryOrange});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 40,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
