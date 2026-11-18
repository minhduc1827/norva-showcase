import 'package:flutter_test/flutter_test.dart';
import 'package:norva/app/app.dart';
import 'package:norva/core/storage/app_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  testWidgets('NorvaApp renders onboarding screen', (tester) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final preferences = AppPreferences(sharedPreferences);

    await tester.pumpWidget(
      NorvaApp(preferences: preferences),
    );

    await tester.pumpAndSettle();

    expect(find.text('Norva'), findsNothing);
  });
}