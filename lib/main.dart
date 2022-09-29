import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/homePage.dart';
import 'package:flutter_application_2/pages/loginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      // home:  const HomePage(),

      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepOrange,
       //For Google Founts must add dependies pub.dev
      fontFamily: GoogleFonts.aBeeZee().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      initialRoute: "/login",
      routes: {
        "/": ((context) => const HomePage()),
        "/login":(context) => const LoginPage()
      },

    );
  }
}