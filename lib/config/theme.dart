import 'package:flutter/material.dart';
import '../constants/colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryGreen,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryGreen,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.primaryBlue),
      titleTextStyle: TextStyle(
        fontFamily: 'Futura',
        color: AppColors.primaryBlue,
        fontSize: 20,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontFamily: 'Futura',
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Futura',
        color: AppColors.primaryOrange,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Futura',
        fontSize: 16,
        color: Colors.grey,
        fontWeight: FontWeight.normal,
      ),
      displayLarge: TextStyle(
        fontFamily: 'Futura',
        color: AppColors.primaryGreen,
        fontSize: 27,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Futura',
        fontSize: 23,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Futura',
        color: Colors.black54,
        fontSize: 16,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Futura Bold',
        fontSize: 55,
        fontWeight: FontWeight.bold,
      ),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryGreen,
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: AppColors.primaryGreen,
        textStyle: const TextStyle(
          fontFamily: 'Futura',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryGreen),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryGreen, width: 2),
      ),
      labelStyle: TextStyle(fontFamily: 'Futura', color: AppColors.primaryBlue),
      hintStyle: TextStyle(fontFamily: 'Futura', color: AppColors.primaryOrange),
    ),
  );
}
