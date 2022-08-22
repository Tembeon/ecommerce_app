import 'package:flutter/material.dart';

import '../generated/resources/fonts.gen.dart';

class AppThemes {
  static ThemeData get lightTheme => ThemeData(
        colorScheme: const ColorScheme(
          primary: Color(0xFF010035),
          brightness: Brightness.light,
          error: Colors.red,
          background: Colors.white,
          onBackground: Colors.white38,
          onError: Colors.white,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.white,
          secondary: Color(0xFFFF6E4E),
          surface: Colors.white30,
        ),
        scaffoldBackgroundColor: const Color(0xFFF8F8F8),
        appBarTheme: const AppBarTheme(
          color: Color(0xFFF8F8F8),
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Color(0xFF010035),
            fontFamily: FontFamily.markPro,
            fontWeight: FontWeight.w500,
            fontSize: 15.0,
          ),
          iconTheme: IconThemeData(
            color: Color(0xFF010035),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              return const Color(0xFFFF6E4E);
            }),
          ),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 25.0,
            fontFamily: FontFamily.markPro,
            fontWeight: FontWeight.w700,
            color: Color(0xFF010035),
          ),
        ),
      );
}
