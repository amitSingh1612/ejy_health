import 'package:ejy_health/Screens/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(

      splash:SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100,),
            Image.asset("assets/images/ejyHealthLogo.jpg",
              height: 220,
            width: 180,),
            const SizedBox(height: 280,),
           const  Text("Easy Journey of Your Health",
              style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 2),)

          ],
        ),

      ) ,
      duration: 300 ,
      backgroundColor: Colors.white,
     splashIconSize:800 ,
      nextScreen:const  WelcomeScreen(),
    );
  }
}

