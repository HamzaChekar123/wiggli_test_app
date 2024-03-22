import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

import '../../../user_preferences/infrastructure/user_preferences_isar.dart';

const _isarSchemas = <CollectionSchema<Object>>[
  UserPreferencesIsarSchema,
];

class IsarDatabase {
  late Isar _isar;

  Isar get isar => _isar;

  bool _hasBeenInitialize = false;

  Future<void> init() async {
    if (_hasBeenInitialize) {
      return;
    }
    final dbDirectory = await getApplicationDocumentsDirectory();

    try {
      _isar = await Isar.open(
        _isarSchemas,
        directory: dbDirectory.path,
      );
    } catch (e, s) {
      Logger().e(e.toString(), stackTrace: s);
      rethrow;
    }

    _hasBeenInitialize = true;
  }
}
