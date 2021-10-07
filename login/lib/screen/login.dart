import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("เข้าสู่ระบบ"),
      ),
    );
  }
}
