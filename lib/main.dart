import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/main_page.dart';

import 'colors/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'Flutter Theme Demo',
      debugShowCheckedModeBanner: false,
      home:  Main_page(),
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        scaffoldBackgroundColor: backgroundColor,
        textTheme: TextTheme(
          
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      
        
      ),
    );
  }
}
