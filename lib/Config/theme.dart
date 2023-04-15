import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      primaryColor: Color(0xFFFE3C5B),
      primaryColorDark: Color(0xFFFC0028),
      primaryColorLight: Color(0xFFFE9AAA),
      scaffoldBackgroundColor: Colors.white,
      backgroundColor:Color(0xFFF5F5F5),
      fontFamily: 'Future',
      textTheme: const TextTheme(
          displayLarge: TextStyle(
        color: Color(0xFF1B070B),
        fontWeight: FontWeight.bold,
        fontSize: 36,
      ),
        displayMedium: TextStyle(
          color: Color(0xFF1B070B),
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        displaySmall: TextStyle(
          color: Color(0xFF1B070B),
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        headlineMedium: TextStyle(
          color: Color(0xFF1B070B),
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        headlineSmall: TextStyle(
          color: Color(0xFF1B070B),
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        titleLarge: TextStyle(
          color: Color(0xFF1B070B),
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
        bodyLarge:  TextStyle(
          color: Color(0xFF1B070B),
          fontWeight: FontWeight.normal,
          fontSize: 12,
        ),
        bodyMedium:  TextStyle(
          color: Color(0xFF1B070B),
          fontWeight: FontWeight.normal,
          fontSize: 10,
        ),

      )
  );
}
