import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/storage/app_preferences.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit(this._preferences)
      : super(Locale(_preferences.locale));

  final AppPreferences _preferences;

  static const supportedLanguageCodes = [
    'en',
    'sv',
    'da',
    'nb',
    'fi',
  ];

  Future<void> changeLocale(String languageCode) async {
    if (!supportedLanguageCodes.contains(languageCode)) return;

    await _preferences.saveLocale(languageCode);
    emit(Locale(languageCode));
  }
}