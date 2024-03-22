import '../../core/infrastructure/database/isar_database.dart';
import 'user_preferences_dto.dart';
import 'user_preferences_isar.dart';
import 'user_preferences_storage.dart';

class UserPreferencesLocalService implements UserPreferencesStorage {
  final IsarDatabase _isarDatabase;

  UserPreferencesLocalService(this._isarDatabase);

  UserPreferencesDto? _cachedUserPreferences;

  @override
  Future<UserPreferencesDto?> getPreferences() async {
    if (_cachedUserPreferences != null) {
      return _cachedUserPreferences;
    }

    final userPreferencesBox =
        await _isarDatabase.isar.userPreferencesIsars.get(0);

    if (userPreferencesBox == null) {
      return null;
    }

    return _cachedUserPreferences =
        UserPreferencesDto.fromIsar(userPreferencesBox);
  }

  @override
  Future<void> savePreferences(UserPreferencesDto userPreferences) async {
    _cachedUserPreferences = userPreferences;

    await _isarDatabase.isar.writeTxn(
      () => _isarDatabase.isar.userPreferencesIsars.put(
        userPreferences.toIsar(),
      ),
    );
  }
}
