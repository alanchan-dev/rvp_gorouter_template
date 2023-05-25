import 'package:flutter/material.dart';
import 'router_notifier.dart';
import 'routes.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  final notifier = ref.watch(routerNotifierProvider.notifier);

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    refreshListenable: notifier,
    debugLogDiagnostics: true,
    initialLocation: SplashRoute.path,
    routes: notifier.routes,
    redirect: notifier.redirect,
    errorBuilder: (context, state) {
      return const Text("Page not found");
    },
  );
}
