import 'package:crxt_muse/views/dashboard/dashboard_screen.dart';
import 'package:crxt_muse/views/profile/profile_screen.dart';
import 'package:crxt_muse/views/welcome/splash_screen.dart';
import 'package:crxt_muse/views/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/splash',
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: '/welcome',
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: '/profile',
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: '/dashboard',
      page: () => const DashboardScreen(),
    ),
  ];
}
