import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:patrol_test/main.dart';

void main() {
  patrolTest(
    'counter is incremented when plus button is tapped',
        (PatrolTester $) async {
      await $.pumpWidget(const MyApp());

      expect($('0'), findsOneWidget);
      expect($('-1'), findsNothing);

      await $(Icons.remove).tap();

      expect($('0'), findsNothing);
      expect($('-1'), findsOneWidget);
    },
  );
}


