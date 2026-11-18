abstract class OnboardingRepository {
  Future<void> complete({
    required String locale,
    required String currency,
    required String country,
    required String household,
    required bool appLockEnabled,
  });
}