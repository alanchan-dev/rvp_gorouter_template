import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rvp_gorouter_template/shared/domain/providers/theme/theme_service.dart';

import 'router/app_router.dart';
import 'styles/app_theme.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    final themeMode = ref.watch(themeServiceProvider);

    return MaterialApp.router(
      routerConfig: router,
      restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) => 'Title',
      themeMode: themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
