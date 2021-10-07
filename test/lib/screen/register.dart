import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class MySignUpPage extends StatefulWidget {
  //const MySignUpPage({required Key key}) : super(key: key);

  @override
  _MySignUpPageState createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
  final Future<FirebaseApp> firebase = Firebase.();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: firebase,
      
      builder: (context, snapshot) {

    });
    return Scaffold(
        appBar: AppBar(
        title: Text("Sign up", style: TextStyle(color: Colors.white)),
         ),
        body: Container(
            color: Colors.green[50],
            child: Center(
               child: Container(
                   decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                          colors: <Color>[Color(0xffee0000), Color(0xffeeee00)],)),
                  margin: EdgeInsets.all(32),
                  padding: EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildTextFieldEmail(),
                      buildTextFieldPassword(),
                      buildTextFieldPasswordConfirm(),
                      buildButtonSignUp(context)
                    ],
                  )),
            )));
  }

  Container buildButtonSignUp(BuildContext context) {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        child: Text("Sign up",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.green[200]),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildTextFieldEmail() {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: "Email"),
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontSize: 18)));
  }

  Container buildTextFieldPassword() {
    return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            obscureText: true,
            decoration: InputDecoration.collapsed(hintText: "Password"),
            style: TextStyle(fontSize: 18)));
  }

  Container buildTextFieldPasswordConfirm() {
    return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            obscureText: true,
            decoration: InputDecoration.collapsed(hintText: "Re-password"),
            style: TextStyle(fontSize: 18)));
  }
}


