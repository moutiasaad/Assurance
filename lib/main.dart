import 'package:assurance/blog_page.dart';
import 'package:assurance/home_page.dart';
import 'package:assurance/packe1.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimary,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'HomePage',
      routes: {
        // '/': (context) => MyHomePage(),
        'HomePage': (context) => HomePage(),
        'auto': (context) => auto(),
      },
    );
  }
}

