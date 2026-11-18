// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appName => 'Norva';

  @override
  String get commonContinue => 'Jatka';

  @override
  String get commonBack => 'Takaisin';

  @override
  String get commonStart => 'Aloita';

  @override
  String get commonSave => 'Tallenna';

  @override
  String get commonCancel => 'Peruuta';

  @override
  String get commonDone => 'Valmis';

  @override
  String get commonAdd => 'Lisää';

  @override
  String get commonMonth => 'Kuukausi';

  @override
  String get commonAllTime => 'Kaikki ajat';

  @override
  String get commonCustom => 'Mukautettu';

  @override
  String get commonFrom => 'Alkaen';

  @override
  String get commonTo => 'Päättyen';

  @override
  String get commonShared => 'Jaettu';

  @override
  String get commonMonthly => 'Kuukausittain';

  @override
  String get commonYearly => 'Vuosittain';

  @override
  String get commonEveryMonth => 'Joka kuukausi';

  @override
  String get commonThisPeriod => 'Tällä ajanjaksolla';

  @override
  String get commonSeeCategories => 'Näytä kategoriat';

  @override
  String get landingWelcomeTitle =>
      'Voit tuntea olosi varmaksi raha-asioissasi ilman, että sinun tarvitsee seurata jokaista menoa pakonomaisesti.';

  @override
  String get landingWelcomeDescription =>
      'Norva on pohjoismaisille perheille ja ammattilaisille suunnattu henkilökohtaisen taloudellisen hyvinvoinnin keskus. Pankkiyhteyttä ei tarvita koskaan.';

  @override
  String get landingPrivacyTitle => 'Tietosi pysyvät laitteellasi';

  @override
  String get landingPrivacyDescription =>
      'Kaikki salataan puhelimessasi. Varmuuskopiointi on valinnaista ja päästä päähän -salattua.';

  @override
  String get landingNoAdsTitle => 'Ei mainoksia. Ei tietojen myyntiä. Koskaan.';

  @override
  String get landingNoAdsDescription =>
      'Tulomme tulevat Premium-palvelusta, eivät tiedoistasi. Voit viedä tai poistaa kaiken milloin tahansa.';

  @override
  String get onboardingMakeItYours => 'Tee siitä omannäköisesi';

  @override
  String get onboardingLanguage => 'Kieli';

  @override
  String get onboardingCurrency => 'Valuutta';

  @override
  String get onboardingCountry => 'Maa';

  @override
  String get onboardingHouseholdType => 'Miten aiot käyttää sovellusta?';

  @override
  String get onboardingJustMe => 'Vain minä';

  @override
  String get onboardingWithPartner => 'Kumppanin kanssa';

  @override
  String get onboardingMovingHere => 'Olen muuttamassa tänne';

  @override
  String get onboardingLockApp =>
      'Lukitse sovellus biometrisellä tunnistautumisella tai PIN-koodilla';

  @override
  String onboardingExampleAmount(Object amount) {
    return 'Esimerkki summasta omassa muodossasi: $amount';
  }

  @override
  String get navigationHome => 'Etusivu';

  @override
  String get navigationMoney => 'Talous';

  @override
  String get navigationSubscriptions => 'Tilaukset';

  @override
  String get navigationHousehold => 'Kotitalous';

  @override
  String get navigationGoals => 'Tavoitteet';

  @override
  String get homeTitle => 'Etusivu';

  @override
  String get homeWelcomeMessage =>
      'Voit tuntea olosi varmaksi raha-asioissasi ilman, että sinun tarvitsee seurata jokaista menoa pakonomaisesti.';

  @override
  String get homeFinancialWellness => 'Taloudellinen hyvinvointi';

  @override
  String get homeWellnessGood => 'Hyvä';

  @override
  String homeScoreOf100(Object score) {
    return 'Pisteet: $score/100';
  }

  @override
  String get homeThisWeek => 'Tällä viikolla';

  @override
  String homeDiningSpendInsight(Object percentage, Object period) {
    return 'Ravintolakulusi kasvoivat $percentage% verrattuna ajanjaksoon $period.';
  }

  @override
  String get homeUnlockWeeklyCoaching => 'Avaa viikoittainen talousvalmennus';

  @override
  String get homeLookingAhead => 'Katse tulevaan';

  @override
  String homeVacationFundForecast(Object months) {
    return 'Nykyisellä tahdilla saavutat lomarahatavoitteesi $months kuukaudessa.';
  }

  @override
  String homeNextMilestone(Object months, Object percentage) {
    return 'Seuraava välitavoite: $percentage% noin $months kuukauden kuluttua';
  }

  @override
  String get homeReflect => 'Pohdi';

  @override
  String get homeSundayCheckIn => 'Sunnuntain tilannekatsaus';

  @override
  String get homeMonthlyReflection => 'Kuukausittainen pohdinta';

  @override
  String get homeYourNorvaYear => 'Sinun Norva-vuotesi';

  @override
  String get homeDetailsForPeriod => 'Tämän ajanjakson tiedot';

  @override
  String get moneyTitle => 'Talous';

  @override
  String get moneySpent => 'Kulutettu';

  @override
  String get moneyTransactions => 'Tapahtumat';

  @override
  String get moneyCategories => 'Kategoriat';

  @override
  String get moneyBudgets => 'Budjetit';

  @override
  String get moneyWeeklyShop => 'Viikko-ostokset';

  @override
  String get moneyDinnerOut => 'Illallinen ravintolassa';

  @override
  String get moneyEmergencyFund => 'Hätärahasto';

  @override
  String get moneySalary => 'Palkka';

  @override
  String get moneyLunch => 'Lounas';

  @override
  String get moneyElectricity => 'Sähkö';

  @override
  String get moneyPharmacy => 'Apteekki';

  @override
  String get moneyCinema => 'Elokuvateatteri';

  @override
  String get moneyMonthlyPass => 'Kuukausilippu';

  @override
  String get moneyRent => 'Vuokra';

  @override
  String get moneyGroceries => 'Ruokaostokset';

  @override
  String get moneyDining => 'Ravintolat';

  @override
  String get moneySavings => 'Säästöt';

  @override
  String get moneyOther => 'Muut';

  @override
  String get moneyUtilities => 'Asumisen käyttökulut';

  @override
  String get moneyHealth => 'Terveys';

  @override
  String get moneyEntertainment => 'Viihde';

  @override
  String get moneyTransport => 'Liikenne';

  @override
  String get moneyHousing => 'Asuminen';

  @override
  String get moneyRepeats => 'Toistuva';

  @override
  String get subscriptionsTitle => 'Tilaukset';

  @override
  String get subscriptionsEveryMonth => 'Joka kuukausi';

  @override
  String get subscriptionsIntelligence => 'Tilausanalyysi';

  @override
  String get subscriptionsIntelligenceDescription =>
      'Näe päällekkäisyydet, tilauksiesi hyvinvointipisteet ja mahdolliset säästöt.';

  @override
  String get subscriptionsUnlockPremium => 'Avaa Premiumilla';

  @override
  String get subscriptionsNext30Days => 'Seuraavat 30 päivää';

  @override
  String subscriptionsRenewsIn(Object days) {
    return 'Uusiutuu $days päivän kuluttua';
  }

  @override
  String get subscriptionsAdd => 'Lisää tilaus';

  @override
  String get householdTitle => 'Kotitalous';

  @override
  String get householdMoneyTogether => 'Yhteinen talous';

  @override
  String get householdDescription =>
      'Jaetut budjetit, reilu kulujen seuranta ja yhteiset tavoitteet. Yksi Premium-tilaus kattaa koko kotitalouden.';

  @override
  String get householdTryPremium => 'Kokeile Premiumia 14 päivää';

  @override
  String get goalsTitle => 'Tavoitteet';

  @override
  String get goalsWellnessScore => 'Taloudellisen hyvinvoinnin pisteet';

  @override
  String get goalsCalmSnapshot => 'Rauhallinen tilannekuva, ei arvosana.';

  @override
  String goalsSameAsPreviousPeriod(Object period) {
    return 'Sama kuin $period';
  }

  @override
  String get goalsSavedInPeriod => 'Säästetty tällä ajanjaksolla';

  @override
  String get goalsWellnessTimeline => 'Hyvinvoinnin kehitys';

  @override
  String get goalsLastSixMonths =>
      'Viimeiset 6 kuukautta. Tilanne on nyt hyvä.';

  @override
  String get goalsNoEarlierPeriod => 'Ei aiempaa ajanjaksoa vertailtavaksi';

  @override
  String get goalsNewGoal => 'Uusi tavoite';

  @override
  String goalsAddAmount(Object amount) {
    return 'Lisää $amount';
  }

  @override
  String goalsAtThisPace(Object months) {
    return 'Nykyisellä tahdilla: noin $months kuukautta.';
  }

  @override
  String get goalsVacationFund => 'Lomakassa';

  @override
  String get goalsFamilyVacation => 'Perheloma';

  @override
  String get goalsNewCar => 'Uusi auto';

  @override
  String get designTermsPolicy => 'Lue käyttöehdot ja tietosuojakäytäntö';

  @override
  String get designAppLockEnabled => 'Sovelluksen lukitus käytössä';

  @override
  String get designSavedOnDevice =>
      'Tallennettu laitteellesi. Synkronointi tapahtuu myöhemmin.';

  @override
  String designOverBudgetAlert(Object amount) {
    return '$amount yli budjettirajan. Budjettia on tarpeen muuttaa.';
  }

  @override
  String get designEnterAmountAboveZero => 'Anna nollaa suurempi summa';

  @override
  String get designNeedsCare => 'Vaatii huomiota';

  @override
  String get designTipAction => 'Vinkki ja toiminto';

  @override
  String get designLookingAhead => 'Katse tulevaan';

  @override
  String get designReflectDetails => 'Pohdinta ja tiedot';

  @override
  String get designWellnessRingGood => 'Hyvinvointirengas: Hyvä';

  @override
  String designScoreOf100(Object score) {
    return 'Pisteet: $score/100';
  }

  @override
  String get onboardingStart => 'Aloita';

  @override
  String get landingWelcomeBody =>
      'Henkilökohtainen taloudellisen hyvinvoinnin palvelusi pohjoismaisille perheille ja ammattilaisille. Pankkiyhteyttä ei tarvita.';

  @override
  String get landingDataPrivacyTitle => 'Tietosi pysyvät laitteellasi';

  @override
  String get landingDataPrivacyBody =>
      'Taloustietosi pysyvät laitteellasi. Sinä hallitset niitä.';

  @override
  String get landingNoAdsBody =>
      'Tulomme tulevat Premium-palvelusta, eivät tiedoistasi. Voit viedä tai poistaa kaikki tietosi milloin tahansa.';

  @override
  String get onboardingCountrySweden => 'SE – Tukholma';

  @override
  String get onboardingCountryDenmark => 'DK – Kööpenhamina';

  @override
  String get onboardingCountryNorway => 'NO – Oslo';

  @override
  String get onboardingCountryFinland => 'FI – Helsinki';

  @override
  String onboardingAmountExample(String amount) {
    return 'Esimerkki summasta valitsemassasi muodossa: $amount';
  }

  @override
  String get commonSomethingWentWrong => 'Jokin meni pieleen. Yritä uudelleen.';
}
