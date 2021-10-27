import 'package:flutter/material.dart';
import 'package:list_view_project/Source/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Zero Plan Start",

      theme: ThemeData(
        primaryColor: Colors.cyan
      ),

      home: Homepage(),
    );
  }
}

