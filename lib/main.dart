import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket/homescreen.dart';
import 'package:ticket_widget/ticket_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}