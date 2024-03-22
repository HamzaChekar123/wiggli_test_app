import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/user_preferences.dart';
import 'user_preferences_isar.dart';

part 'user_preferences_dto.freezed.dart';

@freezed
class UserPreferencesDto with _$UserPreferencesDto {
  const UserPreferencesDto._();
  const factory UserPreferencesDto({
    required String locale,
    required ThemeMode theme,
  }) = _UserPreferencesDto;

  factory UserPreferencesDto.fromDomain(UserPreferences userPreferences) {
    return UserPreferencesDto(
      locale: userPreferences.locale.languageCode,
      theme: userPreferences.theme,
    );
  }

  UserPreferences toDomain() => UserPreferences(
        locale: Locale(locale),
        theme: theme,
      );

  factory UserPreferencesDto.fromIsar(UserPreferencesIsar userPreferences) {
    return UserPreferencesDto(
      locale: userPreferences.locale,
      theme: userPreferences.theme,
    );
  }

  UserPreferencesIsar toIsar() => UserPreferencesIsar()
    ..locale = locale
    ..theme = theme;
}
