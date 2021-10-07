
import "package:flutter/material.dart";
import 'package:login/screen/login.dart';
import 'package:login/screen/register.dart';

class HomeScreen extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 150, 30, 50),
          child: Column(
            children: [
              Image.asset("assets/images/MFPC.png"),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.add),
                    label:
                        Text("สร้างบัญชีใหม่", style: TextStyle(fontSize: 18)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return RegisterScreen();
                      }));
                    },
                  )),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.login),
                  label: Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 18)),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
