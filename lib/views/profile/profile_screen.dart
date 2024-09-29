import 'package:crxt_muse/views/profile/foreground.dart';
import 'package:flutter/material.dart';
import 'background.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Stack(
        children: [
          ProfileBackground(),
          ProfileForeground(),
        ],
      ),
    );
  }
}
