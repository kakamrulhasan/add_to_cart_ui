import 'package:flutter/material.dart';
import 'package:flutter_application_12/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.mulishTextTheme(),
        ),
        home:  HomePage(),
      ),
    );
  }
}

