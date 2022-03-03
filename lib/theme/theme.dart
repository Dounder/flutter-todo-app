import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primary = Color(0xFF8A4BDE);
  static const Color secondary = Color(0xFFFEC753);
  static const Color dark = Color(0xFF35393C);
  static const Color light = Color(0xFFFAFAFA);
  static const Color medium = Color(0xFFDEE0E2);

  static mainTheme(context) {
    return ThemeData.light().copyWith(
      textTheme: GoogleFonts.nunitoSansTextTheme(
        Theme.of(context).textTheme,
      ),
    );
  }
}
