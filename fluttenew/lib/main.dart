import 'package:fluttenew/states/Save_file.dart';
import 'package:fluttenew/states/create_account.dart';
import 'package:fluttenew/states/folder.dart';
import 'package:fluttenew/states/order.dart';
import 'package:fluttenew/states/scan_barcode.dart';
import 'package:fluttenew/states/sign_in.dart';
import 'package:fluttenew/utility/my_constant.dart';
import 'package:flutter/material.dart';
import 'package:fluttenew/states/authen.dart';

final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => Authen(),
  '/createAccount': (BuildContext context) => CreateAccount(),
  '/folder': (BuildContext context) => Folder(),
  '/order': (BuildContext context) => Order(),
  '/SaveFile': (BuildContext context) => SaveFile(),
  '/escanBarcod': (BuildContext context) => ScanBarcode(),
  '/signIn': (BuildContext context) => SignIn(),
};

String? initlalRoute;

void main() {
  initlalRoute = Myconstant.routeAuthen;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Myconstant.appName,
      routes: map,
      initialRoute: initlalRoute,
    );
  }
}
