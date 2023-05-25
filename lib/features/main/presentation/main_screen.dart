import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rvp_gorouter_template/app/router/routes.dart';

import '../../../app/router/app_router.dart';
import '../domain/main_screen_controller.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    final mainScreenController =
        ref.watch(mainScreenControllerProvider.notifier);
    final currentIndex = ref.watch(mainScreenControllerProvider);

    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          title: Text(shellRoutes[currentIndex].name ?? ''),
        ),
        body: child,
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (int index) {
            mainScreenController.setCurrentIndex(index);
            router.go(shellRoutes[index].path);
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.chat_bubble_rounded),
              label: 'Chats',
            ),
            NavigationDestination(
              icon: Icon(Icons.explore_rounded),
              label: 'Discover',
            ),
          ],
        ));
  }
}
