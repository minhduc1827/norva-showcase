enum OnboardingStatus {
  initial,
  submitting,
  success,
  failure,
}

class OnboardingState {
  const OnboardingState({
    this.pageIndex = 0,
    this.locale = 'en',
    this.currency = 'EUR',
    this.country = 'FI',
    this.household = 'just_me',
    this.appLockEnabled = true,
    this.status = OnboardingStatus.initial,
  });

  final int pageIndex;
  final String locale;
  final String currency;
  final String country;
  final String household;
  final bool appLockEnabled;
  final OnboardingStatus status;

  OnboardingState copyWith({
    int? pageIndex,
    String? locale,
    String? currency,
    String? country,
    String? household,
    bool? appLockEnabled,
    OnboardingStatus? status,
  }) {
    return OnboardingState(
      pageIndex: pageIndex ?? this.pageIndex,
      locale: locale ?? this.locale,
      currency: currency ?? this.currency,
      country: country ?? this.country,
      household: household ?? this.household,
      appLockEnabled: appLockEnabled ?? this.appLockEnabled,
      status: status ?? this.status,
    );
  }
}