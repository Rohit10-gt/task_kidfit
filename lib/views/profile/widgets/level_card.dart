import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/colors.dart';
import '../../../constants/strings.dart';

class LevelCard extends StatelessWidget {
  final int currentXP;
  final int maxXP;
  final String level;

  const LevelCard({
    super.key,
    required this.currentXP,
    required this.maxXP,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    double progress = (maxXP > 0) ? (currentXP / maxXP) : 0.0;

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: SvgPicture.asset(
                      AppStrings.museKidfitSecure,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Level $level",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ],
              ),
              Text(
                "$currentXP/$maxXP XP",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          const SizedBox(height: 10),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey[300],
            borderRadius: BorderRadius.circular(50),
            minHeight: 13,
            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.primaryGreen),
          ),
          const SizedBox(height: 10),
          Text(
            "L$level/L7",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.primaryGreen),
          ),
        ],
      ),
    );
  }
}
