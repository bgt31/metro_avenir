import 'package:flutter/material.dart';

import 'src/views/home_pages.dart';
import 'src/views/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.red),
      ),
      home: HomePage(),
      routes: {
        SecondPage.tag: (context) => SecondPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
