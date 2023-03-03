import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol_test/awesomeapp.dart';

void main(){
  testWidgets('signs up', (WidgetTester tester) async {
    await tester.pumpWidget(AwesomeApp());
    await tester.pumpAndSettle();

    await tester.enterText(
      find.byKey(Key('emailTextField')),
      'charlie@root.me',
    );
    await tester.pumpAndSettle();

    await tester.enterText(
      find.byKey(Key('nameTextField')),
      'Charlie',
    );
    await tester.pumpAndSettle();

    await tester.enterText(
      find.byKey(Key('passwordTextField')),
      'ny4ncat',
    );
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(Key('termsCheckbox')));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(Key('signUpButton')));
    await tester.pumpAndSettle();

    expect(find.text('Welcome, Charlie!'), findsOneWidget);
  });

}