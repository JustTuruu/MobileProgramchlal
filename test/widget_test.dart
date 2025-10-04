import 'package:flutter_test/flutter_test.dart';

import 'package:Mobicom/main.dart';

void main() {
  testWidgets('StaticApp smoke test', (WidgetTester tester) async {
    // Start the app
    await tester.pumpWidget(const StaticApp());

    // Check app title in AppBar
    expect(find.text('Mobicom'), findsOneWidget);

    // Check HomeScreen body text
    expect(find.text('This is Home Screen'), findsOneWidget);
  });
}
