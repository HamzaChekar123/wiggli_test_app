import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../infrastructure/database/isar_database.dart';
import '../presentation/routes/app_router.dart';

final isarDatabaseProvider = Provider<IsarDatabase>(
  (ref) => IsarDatabase(),
);

final dioProvider = Provider<Dio>(
  (ref) => Dio(),
);

final appRouterProvider = Provider<AppRouter>(
  (ref) => AppRouter(),
);
