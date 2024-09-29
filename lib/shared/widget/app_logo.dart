import 'package:flutter/material.dart';
import '../../constants/strings.dart';

class AppLogo extends StatelessWidget {
  final Color fontColor;
  const AppLogo({super.key, this.fontColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.appName,
      style: Theme.of(context)
          .textTheme
          .displayLarge
          ?.copyWith(color: fontColor, fontSize: 24),
    );
  }
}
