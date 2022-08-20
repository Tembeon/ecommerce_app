import 'package:flutter/material.dart';

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
      );
}
