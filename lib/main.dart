import "package:flutter/material.dart";
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/responsive.dart';
import 'package:flutter_application_2/screens/mainScreen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white)),
      home: const MainScreen(),
    );
  }
}
