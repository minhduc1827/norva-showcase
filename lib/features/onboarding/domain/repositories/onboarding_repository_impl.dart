import '../../../../core/storage/app_preferences.dart';
import '../../domain/repositories/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  OnboardingRepositoryImpl(this._preferences);

  final AppPreferences _preferences;

  @override
  Future<void> complete({
    required String locale,
    required String currency,
    required String country,
    required String household,
    required bool appLockEnabled,
  }) async {
    await _preferences.saveLocale(locale);
    await _preferences.saveCurrency(currency);
    await _preferences.saveCountry(country);
    await _preferences.saveHousehold(household);
    await _preferences.saveAppLock(appLockEnabled);
    await _preferences.completeOnboarding();
  }
}