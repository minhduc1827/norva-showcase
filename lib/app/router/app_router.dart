import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/storage/app_preferences.dart';
import '../../features/onboarding/domain/repositories/onboarding_repository_impl.dart';
import '../../features/onboarding/presentation/cubit/onboarding_cubit.dart';
import '../../features/onboarding/presentation/pages/onboarding_page.dart';
import '../../generated/l10n/app_localizations.dart';

GoRouter createAppRouter(AppPreferences preferences) {
  return GoRouter(
    initialLocation:
    preferences.onboardingCompleted ? '/home' : '/onboarding',
    routes: [
      GoRoute(
        path: '/onboarding',
        builder: (context, state) {
          return BlocProvider(
            create: (_) => OnboardingCubit(
              OnboardingRepositoryImpl(preferences),
            ),
            child: OnboardingPage(
              onCompleted: () => context.go('/home'),
            ),
          );
        },
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) {
          final l10n = AppLocalizations.of(context)!;

          return Scaffold(
            body: Center(
              child: Text(l10n.navigationHome),
            ),
          );
        },
      ),
    ],
  );
}