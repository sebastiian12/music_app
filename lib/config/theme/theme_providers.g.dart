// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$darkModeHash() => r'4bd4539b819489eb06afb4f689fd7e6d5e4c7e2b';

/// See also [DarkMode].
@ProviderFor(DarkMode)
final darkModeProvider = NotifierProvider<DarkMode, bool>.internal(
  DarkMode.new,
  name: r'darkModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$darkModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DarkMode = Notifier<bool>;
String _$selectedColorHash() => r'a09673293660fa55fb837489c6c4a981923dbc65';

/// See also [SelectedColor].
@ProviderFor(SelectedColor)
final selectedColorProvider = NotifierProvider<SelectedColor, Color>.internal(
  SelectedColor.new,
  name: r'selectedColorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedColorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedColor = Notifier<Color>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
