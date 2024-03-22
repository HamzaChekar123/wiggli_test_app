import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

part 'user_preferences_isar.g.dart';



@collection
@Name('UserPreferences')
class UserPreferencesIsar {
  Id get id => 0;

  late String locale;

  @enumerated
  late ThemeMode theme;
}
