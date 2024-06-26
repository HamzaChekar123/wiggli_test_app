import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    // ProviderScope(
    //   observers: kDebugMode
    //       ? [
    //           StateLogger(),
    //         ]
    //       : null,
    //   child: const AppWidget(),
    // ),
    const ProviderScope(
      child: AppWidget(),
    ),
  );
}
