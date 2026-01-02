import 'package:flutter/material.dart';
import 'package:safeaid_kh/ui/my_app.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:ThemeData(
      primaryColor: Color(0xFF1E3A8A),
      scaffoldBackgroundColor: Color(0xFFF8FAFC),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF1E3A8A),
        foregroundColor: Colors.white,
      ),
      colorScheme: ColorScheme.light(
        primary: Color(0xFF1E3A8A),
        secondary: Color(0xFFDC2626),
        error: Color(0xFFDC2626),
      ),
    ),
    home: MyApp(),
  ));
}


