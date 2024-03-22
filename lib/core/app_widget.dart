import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:toastification/toastification.dart';

import '../theme/theme.dart';

import '../user_preferences/shared/providers.dart';
import 'config/config.dart';
import 'shared/providers.dart';

class AppWidget extends ConsumerStatefulWidget {
  const AppWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends ConsumerState<AppWidget> {
  final initializationProvider = FutureProvider<Unit>(
    (ref) async {
      return unit;
    },
  );

  @override
  Widget build(BuildContext context) {
    ref.listen(
      initializationProvider,
      (_, __) {},
    );

    final locale = ref.watch(
      userPreferencesNotifierProvider.select(
        (userPrefences) => userPrefences.locale,
      ),
    );

    final theme = ref.watch(
      userPreferencesNotifierProvider.select(
        (userPrefences) => userPrefences.theme,
      ),
    );

    final appRouter = ref.watch(appRouterProvider);

    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(428, 926),
      child: MaterialApp.router(
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: appRouter.delegate(),
        title: appName,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: theme,
        builder: (context, child) => ToastificationConfigProvider(
          config: toastificationConfig,
          child: child!,
        ),
      ),
    );
  }
}
