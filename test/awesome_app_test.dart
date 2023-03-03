import 'package:patrol/patrol.dart';
import 'package:patrol_test/awesomeapp.dart';

void main(){
  patrolTest('signs up', (PatrolTester $) async {
    await $.pumpWidgetAndSettle(AwesomeApp());

    await $(#emailTextField).enterText('charlie@root.me');
    await $(#nameTextField).enterText('Charlie');
    await $(#passwordTextField).enterText('ny4ncat');
    await $(#termsCheckbox).tap();
    await $(#signUpButton).tap();

    await $('Welcome, Charlie!').waitUntilVisible();
  });

}