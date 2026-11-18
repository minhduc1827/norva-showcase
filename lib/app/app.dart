import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../core/storage/app_preferences.dart';
import '../generated/l10n/app_localizations.dart';
import 'localization/locale_cubit.dart';
import 'router/app_router.dart';
import 'theme/norva_theme.dart';

class NorvaApp extends StatefulWidget {
  const NorvaApp({
    required this.preferences,
    super.key,
  });

  final AppPreferences preferences;

  @override
  State<NorvaApp> createState() => _NorvaAppState();
}

class _NorvaAppState extends State<NorvaApp> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = createAppRouter(widget.preferences);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LocaleCubit(widget.preferences),
      child: BlocBuilder<LocaleCubit, Locale>(
        builder: (context, locale) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Norva',
            theme: NorvaTheme.light(),
            routerConfig: _router,
            locale: locale,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          );
        },
      ),
    );
  }
}