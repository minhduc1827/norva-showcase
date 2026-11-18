import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/localization/locale_cubit.dart';
import '../../../../app/theme/norva_colors.dart';
import '../../../../generated/l10n/app_localizations.dart';
import '../cubit/onboarding_cubit.dart';
import '../cubit/onboarding_state.dart';
import 'onboarding_form_field.dart';
import 'onboarding_page_indicator.dart';
import 'package:intl/intl.dart';

class OnboardingSetupScreen extends StatelessWidget {
  const OnboardingSetupScreen({
    required this.onCompleted,
    super.key,
  });

  final VoidCallback onCompleted;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BlocConsumer<OnboardingCubit, OnboardingState>(
      listenWhen: (previous, current) =>
      previous.status != current.status,
      listener: (context, state) async {
        if (state.status == OnboardingStatus.success) {
          await context.read<LocaleCubit>().changeLocale(state.locale);
          onCompleted();
        }

        if (state.status == OnboardingStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.commonSomethingWentWrong)),
          );
        }
      },
      builder: (context, state) {
        final cubit = context.read<OnboardingCubit>();
        final amountExample = NumberFormat.currency(
          locale: state.locale,
          name: state.currency,
        ).format(1234.50);

        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                l10n.onboardingMakeItYours,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: NorvaColors.primary,
                ),
              ),
              const SizedBox(height: 12),
              const OnboardingPageIndicator(currentIndex: 2),
              const SizedBox(height: 24),
              OnboardingFormField<String>(
                label: l10n.onboardingLanguage,
                value: state.locale,
                items: const [
                  DropdownMenuItem(value: 'en', child: Text('English')),
                  DropdownMenuItem(value: 'sv', child: Text('Svenska')),
                  DropdownMenuItem(value: 'da', child: Text('Dansk')),
                  DropdownMenuItem(value: 'nb', child: Text('Norsk')),
                  DropdownMenuItem(value: 'fi', child: Text('Suomi')),
                ],
                onChanged: (value) {
                  if (value != null) cubit.selectLocale(value);
                },
              ),
              const SizedBox(height: 12),
              OnboardingFormField<String>(
                label: l10n.onboardingCurrency,
                value: state.currency,
                items: const [
                  DropdownMenuItem(value: 'EUR', child: Text('EUR')),
                  DropdownMenuItem(value: 'SEK', child: Text('SEK')),
                  DropdownMenuItem(value: 'DKK', child: Text('DKK')),
                  DropdownMenuItem(value: 'NOK', child: Text('NOK')),
                ],
                onChanged: (value) {
                  if (value != null) cubit.selectCurrency(value);
                },
              ),
              const SizedBox(height: 12),
              OnboardingFormField<String>(
                label: l10n.onboardingCountry,
                value: state.country,
                items: [
                  DropdownMenuItem(
                    value: 'SE',
                    child: Text(l10n.onboardingCountrySweden),
                  ),
                  DropdownMenuItem(
                    value: 'DK',
                    child: Text(l10n.onboardingCountryDenmark),
                  ),
                  DropdownMenuItem(
                    value: 'NO',
                    child: Text(l10n.onboardingCountryNorway),
                  ),
                  DropdownMenuItem(
                    value: 'FI',
                    child: Text(l10n.onboardingCountryFinland),
                  ),
                ],
                onChanged: (value) {
                  if (value != null) cubit.selectCountry(value);
                },
              ),
              const SizedBox(height: 12),
              OnboardingFormField<String>(
                label: l10n.onboardingHouseholdType,
                value: state.household,
                items: [
                  DropdownMenuItem(
                    value: 'just_me',
                    child: Text(l10n.onboardingJustMe),
                  ),
                  DropdownMenuItem(
                    value: 'with_partner',
                    child: Text(l10n.onboardingWithPartner),
                  ),
                  DropdownMenuItem(
                    value: 'moving_here',
                    child: Text(l10n.onboardingMovingHere),
                  ),
                ],
                onChanged: (value) {
                  if (value != null) cubit.selectHousehold(value);
                },
              ),
              const SizedBox(height: 12),
              CheckboxListTile(
                contentPadding: EdgeInsets.zero,
                controlAffinity: ListTileControlAffinity.leading,
                value: state.appLockEnabled,
                onChanged: (value) {
                  cubit.toggleAppLock(value ?? false);
                },
                title: Text(l10n.onboardingLockApp),
              ),
              const SizedBox(height: 12),
              Text(
                l10n.onboardingAmountExample(amountExample),
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 48,
                child: FilledButton(
                  onPressed: state.status == OnboardingStatus.submitting
                      ? null
                      : cubit.complete,
                  child: state.status == OnboardingStatus.submitting
                      ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  )
                      : Text(l10n.onboardingStart),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 48,
                child: OutlinedButton(
                  onPressed: cubit.previousPage,
                  child: Text(l10n.commonBack),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}