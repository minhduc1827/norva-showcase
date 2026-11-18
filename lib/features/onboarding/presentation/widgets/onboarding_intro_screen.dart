import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/theme/norva_colors.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../cubit/onboarding_cubit.dart';
import 'onboarding_page_indicator.dart';

class OnboardingIntroScreen extends StatelessWidget {
  const OnboardingIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 68,
          height: 68,
          decoration: BoxDecoration(
            color: NorvaColors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Icon(
            Icons.auto_awesome,
            color: Colors.white,
            size: 34,
          ),
        ),
        const SizedBox(height: 28),
        Text(
          l10n.landingWelcomeTitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w700,
            color: NorvaColors.primary,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          l10n.landingWelcomeBody,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 28),
        const OnboardingPageIndicator(currentIndex: 0),
        const SizedBox(height: 28),
        SizedBox(
          width: double.infinity,
          height: 48,
          child: FilledButton(
            onPressed: context.read<OnboardingCubit>().nextPage,
            child: Text(l10n.commonContinue),
          ),
        ),
      ],
    );
  }
}