import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_palette.dart';

final defaultTypography = Typography.material2021(
  black: defaultBlackTextTheme,
  white: defaultWhiteTextTheme,
);

final defaultBlackTextTheme = TextTheme(
  displayLarge: GoogleFonts.josefinSans(
    fontSize: 123,
    fontWeight: FontWeight.bold,
    letterSpacing: -1.5,
    color: Colors.black87,
  ),
  displayMedium: GoogleFonts.josefinSans(
    fontSize: 77,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.5,
    color: Colors.black87,
  ),
  displaySmall: GoogleFonts.josefinSans(
    fontSize: 61,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  ),
  headlineLarge: GoogleFonts.josefinSans(
    fontSize: 48,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: Colors.black87,
  ),
  headlineMedium: GoogleFonts.josefinSans(
    fontSize: 43,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: Colors.black87,
  ),
  headlineSmall: GoogleFonts.josefinSans(
    fontSize: 31,
    fontWeight: FontWeight.w400,
    color: Colors.black87,
  ),
  titleLarge: GoogleFonts.josefinSans(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: Colors.black87,
  ),
  titleMedium: GoogleFonts.josefinSans(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    color: Colors.black87,
  ),
  titleSmall: GoogleFonts.josefinSans(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: Colors.black87,
  ),
  bodyLarge: GoogleFonts.quicksand(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    color: Colors.black87,
  ),
  bodyMedium: GoogleFonts.quicksand(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: Colors.black87,
  ),
  labelLarge: GoogleFonts.josefinSans(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
    color: Colors.black87,
  ),
  bodySmall: GoogleFonts.quicksand(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    color: Colors.black87,
  ),
  labelSmall: GoogleFonts.quicksand(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    color: Colors.black87,
  ),
);

final defaultWhiteTextTheme = TextTheme(
  displayLarge: GoogleFonts.josefinSans(
    fontSize: 123,
    fontWeight: FontWeight.bold,
    letterSpacing: -1.5,
    color: ColorPalette.whiteColor,
  ),
  displayMedium: GoogleFonts.josefinSans(
    fontSize: 77,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.5,
    color: ColorPalette.whiteColor,
  ),
  displaySmall: GoogleFonts.josefinSans(
    fontSize: 61,
    fontWeight: FontWeight.bold,
    color: ColorPalette.whiteColor,
  ),
  headlineLarge: GoogleFonts.josefinSans(
    fontSize: 48,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: ColorPalette.whiteColor,
  ),
  headlineMedium: GoogleFonts.josefinSans(
    fontSize: 43,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: ColorPalette.whiteColor,
  ),
  headlineSmall: GoogleFonts.josefinSans(
    fontSize: 31,
    fontWeight: FontWeight.w400,
    color: ColorPalette.whiteColor,
  ),
  titleLarge: GoogleFonts.josefinSans(
    fontSize: 26,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
    color: ColorPalette.whiteColor,
  ),
  titleMedium: GoogleFonts.josefinSans(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    color: ColorPalette.whiteColor,
  ),
  titleSmall: GoogleFonts.josefinSans(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: ColorPalette.whiteColor,
  ),
  bodyLarge: GoogleFonts.quicksand(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    color: ColorPalette.whiteColor,
  ),
  bodyMedium: GoogleFonts.quicksand(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: ColorPalette.whiteColor,
  ),
  labelLarge: GoogleFonts.josefinSans(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
    color: ColorPalette.whiteColor,
  ),
  bodySmall: GoogleFonts.quicksand(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    color: ColorPalette.whiteColor,
  ),
  labelSmall: GoogleFonts.quicksand(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    color: ColorPalette.whiteColor,
  ),
);

final defaultTextTheme = TextTheme(
  displayLarge: GoogleFonts.josefinSans(
      fontSize: 123, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  displayMedium: GoogleFonts.josefinSans(
      fontSize: 77, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  displaySmall:
      GoogleFonts.josefinSans(fontSize: 61, fontWeight: FontWeight.w400),
  headlineMedium: GoogleFonts.josefinSans(
      fontSize: 43, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headlineSmall:
      GoogleFonts.josefinSans(fontSize: 31, fontWeight: FontWeight.w400),
  titleLarge: GoogleFonts.josefinSans(
      fontSize: 26, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  titleMedium: GoogleFonts.josefinSans(
      fontSize: 20, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  titleSmall: GoogleFonts.josefinSans(
      fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyLarge: GoogleFonts.quicksand(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyMedium: GoogleFonts.quicksand(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  labelLarge: GoogleFonts.quicksand(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  bodySmall: GoogleFonts.quicksand(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  labelSmall: GoogleFonts.quicksand(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);
