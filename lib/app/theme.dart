import 'package:flutter/material.dart';
import 'constants.dart';

class AppTheme {
  // Light Theme
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppConstants.primaryGreen,
      scaffoldBackgroundColor: AppConstants.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppConstants.primaryGreen,
        foregroundColor: AppConstants.white,
        elevation: 0,
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: AppConstants.black,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppConstants.black,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: AppConstants.black,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: AppConstants.black,
        ),
      ),
    );
  }

  // Dark Theme
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: AppConstants.primaryGreen,
      scaffoldBackgroundColor: AppConstants.black,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppConstants.primaryGreen,
        foregroundColor: AppConstants.white,
        elevation: 0,
      ),
    );
  }
}
