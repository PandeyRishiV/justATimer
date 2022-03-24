import 'package:flutter/material.dart';
import 'package:just_a_timer/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //other red : #b91d12
  final navyBlue = const Color.fromRGBO(1, 29, 38, 1);
  final skyBlue = const Color.fromRGBO(136, 203, 231, 1);
  final red = const Color.fromRGBO(132, 36, 32, 1);
  final white = const Color.fromRGBO(252, 251, 251, 1);
  final black = const Color.fromRGBO(1, 1, 1, 1);

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      routes: {
        "/": (context) => const Home(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: navyBlue,
          secondary: black,
          error: red,
          background: skyBlue,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.dark(
          primary: skyBlue,
          secondary: white,
          error: red,
          background: navyBlue,
        ),
      ),
    );
  }
}
