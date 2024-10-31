import 'package:flutter/material.dart';
import 'team_intro_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TeamIntroPage(),
    );
  }
}
