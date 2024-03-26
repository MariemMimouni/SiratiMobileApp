import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sirati_app/Pages/home.page.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
void initState(){
  super.initState();
  _navigateToHome();
}
_navigateToHome() async{
  await Future.delayed(Duration(milliseconds: 1500),(){});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));

}
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 10000,
      splash: Center(
        child: Column(
            children:[Image.asset(
              'images/SiratiLogo.png',
            )]),
      ),
      nextScreen: HomePage(),
      backgroundColor: Color(0xFFF6F6F6),
      splashIconSize: 350,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
