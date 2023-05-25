import 'package:flutter/material.dart';
import 'typography.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  typography: defaultTypography,
  // scaffoldBackgroundColor: const Color(0xFFf2f6ff),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  typography: defaultTypography,
  scaffoldBackgroundColor: const Color(0xFF121212),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF121212),
  ),
);
