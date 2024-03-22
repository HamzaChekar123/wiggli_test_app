import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/shared/providers.dart';
import '../application/user_preferences_notifier.dart';
import '../domain/user_preferences.dart';
import '../infrastructure/user_preferences_local_service.dart';
import '../infrastructure/user_preferences_repository.dart';

final userPreferencesLocalServiceProvider = Provider<UserPreferencesLocalService>(
  (ref) => UserPreferencesLocalService(
    ref.watch(isarDatabaseProvider),
  ),
);

final userPreferencesRepositoryProvider = Provider<UserPreferencesRepository>(
  (ref) => UserPreferencesRepository(
    ref.watch(userPreferencesLocalServiceProvider),
  ),
);

final userPreferencesNotifierProvider = StateNotifierProvider<UserPreferencesNotifier, UserPreferences>(
  (ref) => UserPreferencesNotifier(
    ref.watch(userPreferencesRepositoryProvider),
  ),
);
