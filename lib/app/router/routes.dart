import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rvp_gorouter_template/features/authentication/presentation/login_screen.dart';
import 'package:rvp_gorouter_template/features/chat/presentation/chat_list_screen.dart';
import 'package:rvp_gorouter_template/features/discover/presentation/discover_screen.dart';
import 'package:rvp_gorouter_template/features/home/presentation/home_screen.dart';
import 'package:rvp_gorouter_template/features/main/presentation/main_screen.dart';

import '../../features/splash/presentation/screens/splash_screen.dart';

part 'routes.g.dart';

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

@TypedGoRoute<SplashRoute>(path: SplashRoute.path)
class SplashRoute extends GoRouteData {
  const SplashRoute();
  static const path = '/splash';
  static const name = 'Splash';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashScreen();
  }
}

@TypedGoRoute<LoginRoute>(path: LoginRoute.path)
class LoginRoute extends GoRouteData {
  const LoginRoute();
  static const path = '/login';
  static const name = 'Login';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}

const shellRoutes = [
  TypedGoRoute<HomeRoute>(path: HomeRoute.path, name: HomeRoute.name),
  TypedGoRoute<ChatsRoute>(path: ChatsRoute.path, name: ChatsRoute.name),
  TypedGoRoute<DiscoverRoute>(
      path: DiscoverRoute.path, name: DiscoverRoute.name),
];

@TypedShellRoute<ShellContainerRoute>(
  routes: shellRoutes,
)
class ShellContainerRoute extends ShellRouteData {
  const ShellContainerRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = _shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return MainScreen(
      key: state.pageKey,
      child: navigator,
    );
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();
  static const path = '/home';
  static const name = 'Home';

  @override
  CustomTransitionPage<void> buildPage(
      BuildContext context, GoRouterState state) {
    // To be replaced with Material 3 transition
    return CustomTransitionPage(
      child: const HomeScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    );
  }

  // @override
  // Widget build(BuildContext context, GoRouterState state) {
  //   return const HomeScreen();
  // }
}

class ChatsRoute extends GoRouteData {
  const ChatsRoute();
  static const path = '/chats';
  static const name = 'Chats';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ChatListScreen();
  }
}

class DiscoverRoute extends GoRouteData {
  const DiscoverRoute();
  static const path = '/discover';
  static const name = 'Discover';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DiscoverScreen();
  }
}
