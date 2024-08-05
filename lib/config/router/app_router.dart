import 'package:go_router/go_router.dart';
import 'package:music_app/homescreen.dart';
import 'package:music_app/presentations/screens/notifications_screen.dart';
import 'package:music_app/presentations/screens/reproductor_screen.dart';
import 'package:music_app/presentations/screens/search_screen.dart';
import 'package:music_app/presentations/screens/settings_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: '/reproductor',
        builder: (context, state) => const ReproductorScreen(),
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: '/activities',
        builder: (context, state) => NotificationsScreen(),
      )
    ],
  );
}
