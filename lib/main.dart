import 'package:flutter/material.dart';
import 'package:internship/day%203/day3.dart';

import 'home_page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Samson App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const DayThree(),
    );
  }
}
