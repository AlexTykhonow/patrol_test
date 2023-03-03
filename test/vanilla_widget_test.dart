import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol_test/main.dart';

void main() {
  testWidgets(
    'counter is incremented when plus button is tapped',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      expect(find.text('0'), findsOneWidget);
      expect(find.text('-1'), findsNothing);

      await tester.tap(find.byIcon(Icons.remove));
      await tester.pump();

      expect(find.text('0'), findsNothing);
      expect(find.text('-1'), findsOneWidget);
    },
  );
}
