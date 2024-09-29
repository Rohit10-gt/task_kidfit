import 'package:crxt_muse/constants/colors.dart';
import 'package:flutter/material.dart';

class DashboardBackground extends StatelessWidget {
  const DashboardBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
            child: Container(
          color: AppColors.primaryGreen.withOpacity(0.9),
        )),
        Expanded(
          flex: 7,
          child: Container(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
