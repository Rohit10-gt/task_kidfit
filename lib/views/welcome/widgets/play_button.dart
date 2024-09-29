import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/colors.dart';

class PlayButton extends StatelessWidget {
  final Function()? onPressed;
  const PlayButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.all(12),
          elevation: 8,
          shadowColor: Colors.black.withOpacity(0.7),
        ),
        onPressed: onPressed,
        child: const Icon(
          Icons.play_arrow,
          color: AppColors.primaryBlue,
          size: 30,
        ),
      ),
    );
  }
}
