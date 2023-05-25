import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_service.g.dart';

@riverpod
class ThemeService extends _$ThemeService {
  @override
  ThemeMode build() {
    Brightness platformBrightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;

    switch (platformBrightness) {
      case Brightness.light:
        return ThemeMode.light;
      case Brightness.dark:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  void setThemeMode(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.system:
        state = ThemeMode.system;
        break;
      case ThemeMode.light:
        state = ThemeMode.light;
        break;
      case ThemeMode.dark:
        state = ThemeMode.dark;
        break;
      default:
        state = ThemeMode.system;
    }
  }
}
