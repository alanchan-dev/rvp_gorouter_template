import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rvp_gorouter_template/shared/domain/providers/theme/theme_service.dart';

class DarkModeSwitcher extends ConsumerWidget {
  const DarkModeSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeServiceProvider);

    return Switch(
      value: themeMode == ThemeMode.dark,
      onChanged: (isDarkMode) {
        ref
            .read(themeServiceProvider.notifier)
            .setThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
      },
    );
  }
}
