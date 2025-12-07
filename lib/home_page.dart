import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_12/app_bar.dart';
import 'package:flutter_application_12/review_details.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 74, 53, 53),
              Color.fromARGB(255, 39, 22, 22),
              Colors.black,
            ],
          ),
        ),
        child: Column(
          children: [
           const MyAppbar(),

            SizedBox(height: 20),

            ReviewDetails()
          ],
        ),
      ),
    );
  }
}
