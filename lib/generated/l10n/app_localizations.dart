import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_da.dart';
import 'app_localizations_en.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_sv.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('da'),
    Locale('en'),
    Locale('fi'),
    Locale('nb'),
    Locale('sv'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Norva'**
  String get appName;

  /// No description provided for @commonContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get commonContinue;

  /// No description provided for @commonBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get commonBack;

  /// No description provided for @commonStart.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get commonStart;

  /// No description provided for @commonSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get commonSave;

  /// No description provided for @commonCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get commonCancel;

  /// No description provided for @commonDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get commonDone;

  /// No description provided for @commonAdd.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get commonAdd;

  /// No description provided for @commonMonth.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get commonMonth;

  /// No description provided for @commonAllTime.
  ///
  /// In en, this message translates to:
  /// **'All time'**
  String get commonAllTime;

  /// No description provided for @commonCustom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get commonCustom;

  /// No description provided for @commonFrom.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get commonFrom;

  /// No description provided for @commonTo.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get commonTo;

  /// No description provided for @commonShared.
  ///
  /// In en, this message translates to:
  /// **'Shared'**
  String get commonShared;

  /// No description provided for @commonMonthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get commonMonthly;

  /// No description provided for @commonYearly.
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get commonYearly;

  /// No description provided for @commonEveryMonth.
  ///
  /// In en, this message translates to:
  /// **'Every month'**
  String get commonEveryMonth;

  /// No description provided for @commonThisPeriod.
  ///
  /// In en, this message translates to:
  /// **'This period'**
  String get commonThisPeriod;

  /// No description provided for @commonSeeCategories.
  ///
  /// In en, this message translates to:
  /// **'See categories'**
  String get commonSeeCategories;

  /// No description provided for @landingWelcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Feel confident about your money, not obsessed with tracking it.'**
  String get landingWelcomeTitle;

  /// No description provided for @landingWelcomeDescription.
  ///
  /// In en, this message translates to:
  /// **'Norva is your personal financial wellness hub for Nordic families and professionals. No bank access required, ever.'**
  String get landingWelcomeDescription;

  /// No description provided for @landingPrivacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Your data stays on your device'**
  String get landingPrivacyTitle;

  /// No description provided for @landingPrivacyDescription.
  ///
  /// In en, this message translates to:
  /// **'Everything is encrypted on your phone. Backup is optional and end-to-end encrypted.'**
  String get landingPrivacyDescription;

  /// No description provided for @landingNoAdsTitle.
  ///
  /// In en, this message translates to:
  /// **'No ads. No selling. Ever.'**
  String get landingNoAdsTitle;

  /// No description provided for @landingNoAdsDescription.
  ///
  /// In en, this message translates to:
  /// **'Our income comes from Premium, not from your data. Export or delete everything at any time.'**
  String get landingNoAdsDescription;

  /// No description provided for @onboardingMakeItYours.
  ///
  /// In en, this message translates to:
  /// **'Make it yours'**
  String get onboardingMakeItYours;

  /// No description provided for @onboardingLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get onboardingLanguage;

  /// No description provided for @onboardingCurrency.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get onboardingCurrency;

  /// No description provided for @onboardingCountry.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get onboardingCountry;

  /// No description provided for @onboardingHouseholdType.
  ///
  /// In en, this message translates to:
  /// **'How will you use it?'**
  String get onboardingHouseholdType;

  /// No description provided for @onboardingJustMe.
  ///
  /// In en, this message translates to:
  /// **'Just me'**
  String get onboardingJustMe;

  /// No description provided for @onboardingWithPartner.
  ///
  /// In en, this message translates to:
  /// **'With a partner'**
  String get onboardingWithPartner;

  /// No description provided for @onboardingMovingHere.
  ///
  /// In en, this message translates to:
  /// **'I am moving here'**
  String get onboardingMovingHere;

  /// No description provided for @onboardingLockApp.
  ///
  /// In en, this message translates to:
  /// **'Lock the app with biometrics or a PIN'**
  String get onboardingLockApp;

  /// No description provided for @onboardingExampleAmount.
  ///
  /// In en, this message translates to:
  /// **'Example amount in your format: {amount}'**
  String onboardingExampleAmount(Object amount);

  /// No description provided for @navigationHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navigationHome;

  /// No description provided for @navigationMoney.
  ///
  /// In en, this message translates to:
  /// **'Money'**
  String get navigationMoney;

  /// No description provided for @navigationSubscriptions.
  ///
  /// In en, this message translates to:
  /// **'Subscriptions'**
  String get navigationSubscriptions;

  /// No description provided for @navigationHousehold.
  ///
  /// In en, this message translates to:
  /// **'Household'**
  String get navigationHousehold;

  /// No description provided for @navigationGoals.
  ///
  /// In en, this message translates to:
  /// **'Goals'**
  String get navigationGoals;

  /// No description provided for @homeTitle.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeTitle;

  /// No description provided for @homeWelcomeMessage.
  ///
  /// In en, this message translates to:
  /// **'Feel confident about your money, not obsessed with tracking it.'**
  String get homeWelcomeMessage;

  /// No description provided for @homeFinancialWellness.
  ///
  /// In en, this message translates to:
  /// **'Financial wellness'**
  String get homeFinancialWellness;

  /// No description provided for @homeWellnessGood.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get homeWellnessGood;

  /// No description provided for @homeScoreOf100.
  ///
  /// In en, this message translates to:
  /// **'Score {score} of 100'**
  String homeScoreOf100(Object score);

  /// No description provided for @homeThisWeek.
  ///
  /// In en, this message translates to:
  /// **'This week'**
  String get homeThisWeek;

  /// No description provided for @homeDiningSpendInsight.
  ///
  /// In en, this message translates to:
  /// **'Your dining spend rose {percentage}% compared with {period}.'**
  String homeDiningSpendInsight(Object percentage, Object period);

  /// No description provided for @homeUnlockWeeklyCoaching.
  ///
  /// In en, this message translates to:
  /// **'Unlock weekly coaching'**
  String get homeUnlockWeeklyCoaching;

  /// No description provided for @homeLookingAhead.
  ///
  /// In en, this message translates to:
  /// **'Looking ahead'**
  String get homeLookingAhead;

  /// No description provided for @homeVacationFundForecast.
  ///
  /// In en, this message translates to:
  /// **'At this pace you reach your vacation fund in {months} months.'**
  String homeVacationFundForecast(Object months);

  /// No description provided for @homeNextMilestone.
  ///
  /// In en, this message translates to:
  /// **'Next milestone: {percentage}% in about {months} month(s)'**
  String homeNextMilestone(Object months, Object percentage);

  /// No description provided for @homeReflect.
  ///
  /// In en, this message translates to:
  /// **'Reflect'**
  String get homeReflect;

  /// No description provided for @homeSundayCheckIn.
  ///
  /// In en, this message translates to:
  /// **'Sunday check-in'**
  String get homeSundayCheckIn;

  /// No description provided for @homeMonthlyReflection.
  ///
  /// In en, this message translates to:
  /// **'Monthly reflection'**
  String get homeMonthlyReflection;

  /// No description provided for @homeYourNorvaYear.
  ///
  /// In en, this message translates to:
  /// **'Your Norva year'**
  String get homeYourNorvaYear;

  /// No description provided for @homeDetailsForPeriod.
  ///
  /// In en, this message translates to:
  /// **'Details for this period'**
  String get homeDetailsForPeriod;

  /// No description provided for @moneyTitle.
  ///
  /// In en, this message translates to:
  /// **'Money'**
  String get moneyTitle;

  /// No description provided for @moneySpent.
  ///
  /// In en, this message translates to:
  /// **'Spent'**
  String get moneySpent;

  /// No description provided for @moneyTransactions.
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get moneyTransactions;

  /// No description provided for @moneyCategories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get moneyCategories;

  /// No description provided for @moneyBudgets.
  ///
  /// In en, this message translates to:
  /// **'Budgets'**
  String get moneyBudgets;

  /// No description provided for @moneyWeeklyShop.
  ///
  /// In en, this message translates to:
  /// **'Weekly shop'**
  String get moneyWeeklyShop;

  /// No description provided for @moneyDinnerOut.
  ///
  /// In en, this message translates to:
  /// **'Dinner out'**
  String get moneyDinnerOut;

  /// No description provided for @moneyEmergencyFund.
  ///
  /// In en, this message translates to:
  /// **'Emergency fund'**
  String get moneyEmergencyFund;

  /// No description provided for @moneySalary.
  ///
  /// In en, this message translates to:
  /// **'Salary'**
  String get moneySalary;

  /// No description provided for @moneyLunch.
  ///
  /// In en, this message translates to:
  /// **'Lunch'**
  String get moneyLunch;

  /// No description provided for @moneyElectricity.
  ///
  /// In en, this message translates to:
  /// **'Electricity'**
  String get moneyElectricity;

  /// No description provided for @moneyPharmacy.
  ///
  /// In en, this message translates to:
  /// **'Pharmacy'**
  String get moneyPharmacy;

  /// No description provided for @moneyCinema.
  ///
  /// In en, this message translates to:
  /// **'Cinema'**
  String get moneyCinema;

  /// No description provided for @moneyMonthlyPass.
  ///
  /// In en, this message translates to:
  /// **'Monthly pass'**
  String get moneyMonthlyPass;

  /// No description provided for @moneyRent.
  ///
  /// In en, this message translates to:
  /// **'Rent'**
  String get moneyRent;

  /// No description provided for @moneyGroceries.
  ///
  /// In en, this message translates to:
  /// **'Groceries'**
  String get moneyGroceries;

  /// No description provided for @moneyDining.
  ///
  /// In en, this message translates to:
  /// **'Dining'**
  String get moneyDining;

  /// No description provided for @moneySavings.
  ///
  /// In en, this message translates to:
  /// **'Savings'**
  String get moneySavings;

  /// No description provided for @moneyOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get moneyOther;

  /// No description provided for @moneyUtilities.
  ///
  /// In en, this message translates to:
  /// **'Utilities'**
  String get moneyUtilities;

  /// No description provided for @moneyHealth.
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get moneyHealth;

  /// No description provided for @moneyEntertainment.
  ///
  /// In en, this message translates to:
  /// **'Entertainment'**
  String get moneyEntertainment;

  /// No description provided for @moneyTransport.
  ///
  /// In en, this message translates to:
  /// **'Transport'**
  String get moneyTransport;

  /// No description provided for @moneyHousing.
  ///
  /// In en, this message translates to:
  /// **'Housing'**
  String get moneyHousing;

  /// No description provided for @moneyRepeats.
  ///
  /// In en, this message translates to:
  /// **'Repeats'**
  String get moneyRepeats;

  /// No description provided for @subscriptionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Subscriptions'**
  String get subscriptionsTitle;

  /// No description provided for @subscriptionsEveryMonth.
  ///
  /// In en, this message translates to:
  /// **'Every month'**
  String get subscriptionsEveryMonth;

  /// No description provided for @subscriptionsIntelligence.
  ///
  /// In en, this message translates to:
  /// **'Subscription intelligence'**
  String get subscriptionsIntelligence;

  /// No description provided for @subscriptionsIntelligenceDescription.
  ///
  /// In en, this message translates to:
  /// **'See overlaps, a health score and what you could save.'**
  String get subscriptionsIntelligenceDescription;

  /// No description provided for @subscriptionsUnlockPremium.
  ///
  /// In en, this message translates to:
  /// **'Unlock with Premium'**
  String get subscriptionsUnlockPremium;

  /// No description provided for @subscriptionsNext30Days.
  ///
  /// In en, this message translates to:
  /// **'Next 30 days'**
  String get subscriptionsNext30Days;

  /// No description provided for @subscriptionsRenewsIn.
  ///
  /// In en, this message translates to:
  /// **'Renews in {days} days'**
  String subscriptionsRenewsIn(Object days);

  /// No description provided for @subscriptionsAdd.
  ///
  /// In en, this message translates to:
  /// **'Add subscription'**
  String get subscriptionsAdd;

  /// No description provided for @householdTitle.
  ///
  /// In en, this message translates to:
  /// **'Household'**
  String get householdTitle;

  /// No description provided for @householdMoneyTogether.
  ///
  /// In en, this message translates to:
  /// **'Money, together'**
  String get householdMoneyTogether;

  /// No description provided for @householdDescription.
  ///
  /// In en, this message translates to:
  /// **'Shared budgets, fair contribution tracking and shared goals. One Premium plan covers your whole household.'**
  String get householdDescription;

  /// No description provided for @householdTryPremium.
  ///
  /// In en, this message translates to:
  /// **'Try Premium for 14 days'**
  String get householdTryPremium;

  /// No description provided for @goalsTitle.
  ///
  /// In en, this message translates to:
  /// **'Goals'**
  String get goalsTitle;

  /// No description provided for @goalsWellnessScore.
  ///
  /// In en, this message translates to:
  /// **'Wellness score'**
  String get goalsWellnessScore;

  /// No description provided for @goalsCalmSnapshot.
  ///
  /// In en, this message translates to:
  /// **'Calm snapshot, not a grade.'**
  String get goalsCalmSnapshot;

  /// No description provided for @goalsSameAsPreviousPeriod.
  ///
  /// In en, this message translates to:
  /// **'Same as {period}'**
  String goalsSameAsPreviousPeriod(Object period);

  /// No description provided for @goalsSavedInPeriod.
  ///
  /// In en, this message translates to:
  /// **'Saved in this period'**
  String get goalsSavedInPeriod;

  /// No description provided for @goalsWellnessTimeline.
  ///
  /// In en, this message translates to:
  /// **'Wellness timeline'**
  String get goalsWellnessTimeline;

  /// No description provided for @goalsLastSixMonths.
  ///
  /// In en, this message translates to:
  /// **'Last 6 months. Good now.'**
  String get goalsLastSixMonths;

  /// No description provided for @goalsNoEarlierPeriod.
  ///
  /// In en, this message translates to:
  /// **'No earlier period to compare'**
  String get goalsNoEarlierPeriod;

  /// No description provided for @goalsNewGoal.
  ///
  /// In en, this message translates to:
  /// **'New goal'**
  String get goalsNewGoal;

  /// No description provided for @goalsAddAmount.
  ///
  /// In en, this message translates to:
  /// **'Add {amount}'**
  String goalsAddAmount(Object amount);

  /// No description provided for @goalsAtThisPace.
  ///
  /// In en, this message translates to:
  /// **'At this pace: about {months} months.'**
  String goalsAtThisPace(Object months);

  /// No description provided for @goalsVacationFund.
  ///
  /// In en, this message translates to:
  /// **'Vacation fund'**
  String get goalsVacationFund;

  /// No description provided for @goalsFamilyVacation.
  ///
  /// In en, this message translates to:
  /// **'Family vacation'**
  String get goalsFamilyVacation;

  /// No description provided for @goalsNewCar.
  ///
  /// In en, this message translates to:
  /// **'New car'**
  String get goalsNewCar;

  /// No description provided for @designTermsPolicy.
  ///
  /// In en, this message translates to:
  /// **'Read Terms & Policy'**
  String get designTermsPolicy;

  /// No description provided for @designAppLockEnabled.
  ///
  /// In en, this message translates to:
  /// **'App Lock Enabled'**
  String get designAppLockEnabled;

  /// No description provided for @designSavedOnDevice.
  ///
  /// In en, this message translates to:
  /// **'Saved on your device. It will sync later.'**
  String get designSavedOnDevice;

  /// No description provided for @designOverBudgetAlert.
  ///
  /// In en, this message translates to:
  /// **'{amount} over budget limit. Adjustment needed.'**
  String designOverBudgetAlert(Object amount);

  /// No description provided for @designEnterAmountAboveZero.
  ///
  /// In en, this message translates to:
  /// **'Enter an amount above 0'**
  String get designEnterAmountAboveZero;

  /// No description provided for @designNeedsCare.
  ///
  /// In en, this message translates to:
  /// **'Needs care'**
  String get designNeedsCare;

  /// No description provided for @designTipAction.
  ///
  /// In en, this message translates to:
  /// **'Tip sentence + Action'**
  String get designTipAction;

  /// No description provided for @designLookingAhead.
  ///
  /// In en, this message translates to:
  /// **'Looking ahead'**
  String get designLookingAhead;

  /// No description provided for @designReflectDetails.
  ///
  /// In en, this message translates to:
  /// **'Reflect & Details'**
  String get designReflectDetails;

  /// No description provided for @designWellnessRingGood.
  ///
  /// In en, this message translates to:
  /// **'Wellness Ring: Good'**
  String get designWellnessRingGood;

  /// No description provided for @designScoreOf100.
  ///
  /// In en, this message translates to:
  /// **'Score {score} of 100'**
  String designScoreOf100(Object score);

  /// No description provided for @onboardingStart.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get onboardingStart;

  /// No description provided for @landingWelcomeBody.
  ///
  /// In en, this message translates to:
  /// **'Your personal financial wellness hub for Nordic families and professionals. No bank access required, ever.'**
  String get landingWelcomeBody;

  /// No description provided for @landingDataPrivacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Your data stays on your device'**
  String get landingDataPrivacyTitle;

  /// No description provided for @landingDataPrivacyBody.
  ///
  /// In en, this message translates to:
  /// **'Your financial data stays on your device. You stay in control.'**
  String get landingDataPrivacyBody;

  /// No description provided for @landingNoAdsBody.
  ///
  /// In en, this message translates to:
  /// **'Our income comes from Premium, not from your data. Export or delete everything at any time.'**
  String get landingNoAdsBody;

  /// No description provided for @onboardingCountrySweden.
  ///
  /// In en, this message translates to:
  /// **'SE – Stockholm'**
  String get onboardingCountrySweden;

  /// No description provided for @onboardingCountryDenmark.
  ///
  /// In en, this message translates to:
  /// **'DK – Copenhagen'**
  String get onboardingCountryDenmark;

  /// No description provided for @onboardingCountryNorway.
  ///
  /// In en, this message translates to:
  /// **'NO – Oslo'**
  String get onboardingCountryNorway;

  /// No description provided for @onboardingCountryFinland.
  ///
  /// In en, this message translates to:
  /// **'FI – Helsinki'**
  String get onboardingCountryFinland;

  /// No description provided for @onboardingAmountExample.
  ///
  /// In en, this message translates to:
  /// **'Example amount in your format: {amount}'**
  String onboardingAmountExample(String amount);

  /// No description provided for @commonSomethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get commonSomethingWentWrong;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['da', 'en', 'fi', 'nb', 'sv'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'da':
      return AppLocalizationsDa();
    case 'en':
      return AppLocalizationsEn();
    case 'fi':
      return AppLocalizationsFi();
    case 'nb':
      return AppLocalizationsNb();
    case 'sv':
      return AppLocalizationsSv();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
