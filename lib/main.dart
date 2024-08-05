import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_app/config/router/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_app/config/theme/app_theme.dart';
import 'package:music_app/presentations/providers/providers.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GoRouter router = ref.watch(appRouterProvider);
    final isDarkmode = ref.watch(darkModeProvider);

    return MaterialApp.router(
      title: 'Music APP',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: AppTheme(isDarkmode: isDarkmode).getTheme(),
    );
  }
}
