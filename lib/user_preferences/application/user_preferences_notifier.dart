import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/user_preferences.dart';
import '../infrastructure/user_preferences_repository.dart';

class UserPreferencesNotifier extends StateNotifier<UserPreferences> {
  UserPreferencesNotifier(this._repository) : super(UserPreferences.init());

  final UserPreferencesRepository _repository;

  Future<void> getPreferences() async {
    final userPreferences = await _repository.getPreferences();
    if (userPreferences != null) {
      state = userPreferences;
    }
  }

  Future<void> savePreferences(UserPreferences preferences) async {
    state = preferences;
    await _repository.savePreferences(preferences);
  }
}
