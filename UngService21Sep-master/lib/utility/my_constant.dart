import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyConstant {
  // field
  static String appName = 'Ung Service';

  static Color dark = const Color(0xff00229f);
  static Color primary = Colors.purple.shade200;

  static List<String> types = ['General', 'Vendor', 'Rider'];

  // method
  TextStyle h1Style() => const TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      );

  TextStyle h2Style() => TextStyle(
        color: dark,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  TextStyle h3Style() => TextStyle(
        color: dark,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      );

  ButtonStyle mainStyle() => ElevatedButton.styleFrom(primary: dark);

  BoxDecoration normalBox() => BoxDecoration(color: primary);

  BoxDecoration whiteBox() => const BoxDecoration(color: Colors.white70);

  BoxDecoration gradientBox() => BoxDecoration(
        gradient: RadialGradient(
          center: const Alignment(0, -0.3),
          radius: 1.0,
          colors: [Colors.white, primary],
        ),
      );

  BoxDecoration imageBox() => BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/wall.jpg'),
          fit: BoxFit.cover,
        ),
      );
}
