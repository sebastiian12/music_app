import 'package:flutter/material.dart';

const seedColor = Color.fromARGB(255, 199, 11, 11);

class AppTheme {
  final bool isDarkmode;

  AppTheme({required this.isDarkmode});

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: seedColor,
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        listTileTheme: const ListTileThemeData(
          iconColor: seedColor,
        ),
      );
}

/* @riverpod
AppTheme theme(ThemeRef ref) {
  return AppTheme(
    settings: ThemeSettings(
      colorScheme: ref.watch(selectedColorProvider),
      isDarkMode: ref.watch(darkModeProvider),
    ),
  );
}

class AppTheme {
  final ThemeSettings settings;
  AppTheme({required this.settings});

  ThemeData getTheme() {
    return ThemeData(
      colorSchemeSeed: settings.colorScheme,
      brightness: settings.isDarkMode ? Brightness.dark : Brightness.light,
      filledButtonTheme: settings.getFilledButtonThemeData(),
      //elevatedButtonTheme: settings.getEleveatedButtonThemeData(),
    );
  }
}

class ThemeSettings {
  final Color colorScheme;
  final bool isDarkMode;

  ThemeSettings({
    required this.colorScheme,
    required this.isDarkMode,
  });

  FilledButtonThemeData getFilledButtonThemeData() {
    return FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(colorScheme),
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
    );
  }
}
*/