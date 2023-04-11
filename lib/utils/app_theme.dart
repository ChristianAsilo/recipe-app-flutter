import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class RecipeAppTheme {
  static TextTheme darkTextTheme = TextTheme(
    titleLarge: GoogleFonts.inter(
      fontSize: 40,
      fontWeight: FontWeight.w700,
      color: Colors.white,
      shadows: [
        BoxShadow(
          color: Colors.black.withOpacity(1),
          blurRadius: 10,
          offset: const Offset(0, 5),
        ),
      ],
    ),
    displayMedium: GoogleFonts.inter(
      fontSize: 30,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      shadows: [
        BoxShadow(
          color: Colors.black.withOpacity(1),
          blurRadius: 10,
          offset: const Offset(0, 5),
        ),
      ],
    ),
    displaySmall: GoogleFonts.inter(
      fontSize: 17,
      fontWeight: FontWeight.w300,
      color: Colors.white,
      shadows: [
        BoxShadow(
          color: Colors.black.withOpacity(1),
          blurRadius: 10,
          offset: const Offset(0, 5),
        ),
      ],
    ),
    titleMedium: GoogleFonts.inter(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
}
