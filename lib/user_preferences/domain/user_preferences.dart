import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences.freezed.dart';

@freezed
class UserPreferences with _$UserPreferences {
  const UserPreferences._();
  const factory UserPreferences({
    required Locale locale,
    required ThemeMode theme,
  }) = _UserPreferences;

  factory UserPreferences.init() => const UserPreferences(
        locale: Locale('en'),
        theme: ThemeMode.system,
      );
}
