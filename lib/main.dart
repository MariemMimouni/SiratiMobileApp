import 'package:flutter/material.dart';
import 'package:sirati_app/Pages/awards.page.dart';
import 'package:sirati_app/Pages/education.page.dart';
import 'package:sirati_app/Pages/home.page.dart';
import 'package:sirati_app/Pages/projects.page.dart';
import 'package:sirati_app/Pages/skills.page.dart';
import 'package:sirati_app/Pages/volunteer.page.dart';
import 'package:sirati_app/Pages/work.page.dart';
import 'package:sirati_app/splash.dart';

import 'Pages/contact.page.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes= {
    '/home': (context) => HomePage(),
    '/contact':(context)=>Contact(),
    '/education':(context)=>Education(),
    '/work':(context)=>Work(),
    '/projects':(context)=>Projects(),
    '/volunteer':(context)=>Volunteer(),
    '/skills':(context)=>Skills(),
    '/awards':(context)=>Awards(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: routes,
        debugShowCheckedModeBanner: false,
        home: Splash(),
    theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF6F6F6),
        colorScheme: ColorScheme.fromSeed (seedColor: Color(0xFFC1FF72),
        secondary: Color(0xFF5CE1E6),
           // primary: Color(0xFFC1FF72)
        )));
  }
}
