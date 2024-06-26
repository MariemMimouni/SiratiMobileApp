import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sirati_app/Pages/awards.page.dart';
import 'package:sirati_app/Pages/cv.page.dart';
import 'package:sirati_app/Pages/education.page.dart';
import 'package:sirati_app/Pages/home.page.dart';
import 'package:sirati_app/Pages/projects.page.dart';
import 'package:sirati_app/Pages/skills.page.dart';
import 'package:sirati_app/Pages/work.page.dart';
import 'package:sirati_app/Theme/theme_provider.dart';
import 'package:sirati_app/splash.dart';

import 'Pages/contact.page.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
          child: MyApp()
      ),
  );
}

class MyApp extends StatelessWidget {
  final routes= {
    '/home': (context) => HomePage(),
    '/contact':(context)=>Contact(),
    '/education':(context)=>Education(),
    '/work':(context)=>Work(),
    '/projects':(context)=>Projects(),
    '/skills':(context)=>Skills(),
    '/awards':(context)=>Awards(),
    '/cv':(context)=>CvPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: routes,
        debugShowCheckedModeBanner: false,
        home: Splash(),
    theme: Provider.of<ThemeProvider>(context).themeData,
    // ThemeData(
    //     scaffoldBackgroundColor: Color(0xFFF6F6F6),
    //     colorScheme: ColorScheme.fromSeed (seedColor: Color(0xFF29B8D0),
    //       background: Color(0xFFF6F6F6),
    //       secondary: Color(0xFFC1FF72),
    //       primary: Color(0xFF8ECAE6),
    //       //primary: Colors.cyan.shade200
    //     ))
    );
  }
}
