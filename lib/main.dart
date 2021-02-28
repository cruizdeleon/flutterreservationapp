import 'package:flutter/material.dart';
import 'package:test_project/src/pages/home.dart';
import 'package:test_project/src/pages/login.dart';
import 'package:test_project/src/pages/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Login(),
      routes: {
        "register": (context) => Register(),
      },
    );
  }
}
