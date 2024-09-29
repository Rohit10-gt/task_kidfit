import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/strings.dart';

class SignUpButton extends StatelessWidget {
  final Function()? onPressed;
  const SignUpButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primaryGreen, 
            AppColors.primaryGreen.withOpacity(0.8),
            AppColors.primaryGreen,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.black.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 8,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            const Text(
              AppStrings.signUpButtonText,
            ),
            const SizedBox(width: 15),
            Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(2, 4),
                  ),
                ],
                color: AppColors.primaryOrange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(CupertinoIcons.forward),
            )
          ],
        ),
      ),
    );
  }
}
