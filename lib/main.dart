import 'package:flutter/material.dart';
import 'package:planets_info/features/home/home_page.dart';
import 'package:planets_info/features/start/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planets Information',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartPage(),
      routes: {
        '/home': (_) => HomePage(),
      },
    );
  }
}
