import 'package:flutter/material.dart';
import 'package:ungservice/states/authen.dart';
import 'package:ungservice/states/create_account.dart';

final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => const Authen(),
  '/createAccount': (BuildContext context) => const CreateAccount(),
};

String? keyState;

void main() {
  keyState = '/authen';
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      initialRoute: keyState,
    );
  }
}
