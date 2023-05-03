import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none
        ),
      ),
      textTheme: const TextTheme(
          titleSmall: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.grey
          ),
          titleLarge: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500
          ),
          titleMedium: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400
          )
      ),
    colorScheme: const ColorScheme.light()
  );

  static ThemeData darkTheme = ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none
        ),
      ),
      textTheme: const TextTheme(
          titleSmall: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.grey
          ),
          titleLarge: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500
          ),
          titleMedium: TextStyle(
              color: Color(0xff010b40),
              fontSize: 14,
              fontWeight: FontWeight.w400
          )
      ),
      colorScheme: const ColorScheme.dark()
  );
}
