import 'package:crxt_muse/bloc/data_bloc.dart';
import 'package:crxt_muse/routes.dart';
import 'package:crxt_muse/views/welcome/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as getx;

import 'config/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DataBloc(),
        ),
      ],
      child: getx.GetMaterialApp(
        title: 'Kidfit',
        initialRoute: '/splash',
        defaultTransition: getx.Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 400),
        getPages: AppRoutes.routes,
        theme: AppTheme.lightTheme,
        home: const SplashScreen(),
      ),
    );
  }
}