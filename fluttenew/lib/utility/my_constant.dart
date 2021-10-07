import 'package:flutter/material.dart';

class Myconstant {
  static String appName = 'Ranya';

  //Route
  static String routeAuthen = '/authen';
  static String routeCreateAccount = '/createAccount';
  static String routeFolder = '/folder';
  static String routeOrder = '/order';
  static String routeSaveFile = '/SaveFile';
  static String routeBarcode = '/escanBarcod';
  static String routeSignIn = '/signIn';

  // Image
  static String images1 = 'images/images1.png';
  static String images2 = 'images/images2.png';
  static String images3 = 'images/images3.png';

  // Color
  static Color primary = Color(0xff9575cd);
  static Color dark = Color(0xff65499c);
  static Color light = Color(0xffc7a4ff);

  //Style
  TextStyle h1Style() => TextStyle(
        fontSize: 20,
        color: dark,
        fontWeight: FontWeight.bold,
      );
  TextStyle h2Style() => TextStyle(
        fontSize: 16,
        color: dark,
        fontWeight: FontWeight.w400,
      );
  TextStyle h3Style() => TextStyle(
        fontSize: 14,
        color: dark,
        fontWeight: FontWeight.normal,
      );
  ButtonStyle myButtonStyle() => ElevatedButton.styleFrom(
        primary: Myconstant.dark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      );
}
