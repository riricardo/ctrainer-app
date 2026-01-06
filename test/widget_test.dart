import 'package:flutter_test/flutter_test.dart';
import 'package:ctrainer/app.dart';

void main() {
  testWidgets('Login button navigates to home', (tester) async {
    await tester.pumpWidget(const App());

    expect(find.text('Sign In'), findsOneWidget);
    expect(find.text('My Workouts'), findsNothing);

    await tester.tap(find.text('Sign In'));
    await tester.pumpAndSettle();

    expect(find.text('My Workouts'), findsOneWidget);
  });
}
