import 'package:color_app/color.dart';
import 'package:color_app/home_scren.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Colors',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "home",
      routes: {
        "home":(context) => const HomeScreen(),

      },
    );
  }
}
