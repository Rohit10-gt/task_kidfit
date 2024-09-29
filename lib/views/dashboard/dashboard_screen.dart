import 'package:crxt_muse/views/dashboard/background.dart';
import 'package:crxt_muse/views/dashboard/foreground.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Stack(
        children: [
          DashboardBackground(),
          DashboardForeground(),
        ],
      ),
    );
  }
}