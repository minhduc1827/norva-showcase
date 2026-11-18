import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repositories/onboarding_repository.dart';
import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit(this._repository) : super(const OnboardingState());

  final OnboardingRepository _repository;

  void nextPage() {
    if (state.pageIndex < 2) {
      emit(state.copyWith(pageIndex: state.pageIndex + 1));
    }
  }

  void previousPage() {
    if (state.pageIndex > 0) {
      emit(state.copyWith(pageIndex: state.pageIndex - 1));
    }
  }

  void selectLocale(String value) {
    emit(state.copyWith(locale: value));
  }

  void selectCurrency(String value) {
    emit(state.copyWith(currency: value));
  }

  void selectCountry(String value) {
    emit(state.copyWith(country: value));
  }

  void selectHousehold(String value) {
    emit(state.copyWith(household: value));
  }

  void toggleAppLock(bool value) {
    emit(state.copyWith(appLockEnabled: value));
  }

  Future<void> complete() async {
    if (state.status == OnboardingStatus.submitting) return;

    emit(state.copyWith(status: OnboardingStatus.submitting));

    try {
      await _repository.complete(
        locale: state.locale,
        currency: state.currency,
        country: state.country,
        household: state.household,
        appLockEnabled: state.appLockEnabled,
      );

      emit(state.copyWith(status: OnboardingStatus.success));
    } catch (_) {
      emit(state.copyWith(status: OnboardingStatus.failure));
    }
  }
}