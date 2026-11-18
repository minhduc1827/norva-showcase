import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/onboarding_cubit.dart';
import '../cubit/onboarding_state.dart';
import '../widgets/onboarding_intro_screen.dart';
import '../widgets/onboarding_privacy_screen.dart';
import '../widgets/onboarding_setup_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    required this.onCompleted,
    super.key,
  });

  final VoidCallback onCompleted;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      buildWhen: (previous, current) =>
      previous.pageIndex != current.pageIndex,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 440),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 20,
                  ),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: switch (state.pageIndex) {
                      0 => const OnboardingIntroScreen(
                        key: ValueKey('welcome'),
                      ),
                      1 => const OnboardingPrivacyScreen(
                        key: ValueKey('privacy'),
                      ),
                      _ => OnboardingSetupScreen(
                        key: const ValueKey('setup'),
                        onCompleted: onCompleted,
                      ),
                    },
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}