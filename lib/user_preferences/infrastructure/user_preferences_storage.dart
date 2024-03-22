import 'user_preferences_dto.dart';

abstract class UserPreferencesStorage {
  Future<void> savePreferences(UserPreferencesDto userPreferencesDto);
  Future<UserPreferencesDto?> getPreferences();
}
