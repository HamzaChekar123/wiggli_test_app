import '../domain/user_preferences.dart';
import 'user_preferences_dto.dart';
import 'user_preferences_local_service.dart';

class UserPreferencesRepository {
  final UserPreferencesLocalService _localService;

  const UserPreferencesRepository(this._localService);

  Future<UserPreferences?> getPreferences() async {
    final userPreferencesDto = await _localService.getPreferences();

    if (userPreferencesDto == null) {
      return null;
    }

    return userPreferencesDto.toDomain();
  }

  Future<void> savePreferences(UserPreferences preferences) =>
      _localService.savePreferences(
        UserPreferencesDto.fromDomain(preferences),
      );
}
