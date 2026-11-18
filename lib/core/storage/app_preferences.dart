import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  AppPreferences(this._preferences);

  final SharedPreferences _preferences;

  static const _onboardingCompletedKey = 'onboarding_completed';
  static const _localeKey = 'app_locale';
  static const _currencyKey = 'app_currency';
  static const _countryKey = 'app_country';
  static const _householdKey = 'household_type';
  static const _appLockKey = 'app_lock_enabled';

  bool get onboardingCompleted =>
      _preferences.getBool(_onboardingCompletedKey) ?? false;

  String get locale =>
      _preferences.getString(_localeKey) ?? 'en';

  String get currency =>
      _preferences.getString(_currencyKey) ?? 'EUR';

  String get country =>
      _preferences.getString(_countryKey) ?? 'FI';

  String get household =>
      _preferences.getString(_householdKey) ?? 'just_me';

  bool get appLockEnabled =>
      _preferences.getBool(_appLockKey) ?? true;

  Future<void> saveLocale(String value) =>
      _preferences.setString(_localeKey, value);

  Future<void> saveCurrency(String value) =>
      _preferences.setString(_currencyKey, value);

  Future<void> saveCountry(String value) =>
      _preferences.setString(_countryKey, value);

  Future<void> saveHousehold(String value) =>
      _preferences.setString(_householdKey, value);

  Future<void> saveAppLock(bool value) =>
      _preferences.setBool(_appLockKey, value);

  Future<void> completeOnboarding() =>
      _preferences.setBool(_onboardingCompletedKey, true);
}