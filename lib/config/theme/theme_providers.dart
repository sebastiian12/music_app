import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_providers.g.dart';

@Riverpod(keepAlive: true)
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;
  void changeTo() => state = !state;
}

@Riverpod(keepAlive: true)
class SelectedColor extends _$SelectedColor {
  @override
  Color build() => const Color.fromARGB(255, 186, 59, 28);
  void changeColor(Color color) => state = color;
}
