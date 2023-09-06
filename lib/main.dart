import 'package:ejy_health/Screens/splashScreen.dart';
import 'package:flutter/material.dart';
void main(){

  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

        theme: ThemeData(
        primaryColor:const Color(0xFF6F35A5),
        scaffoldBackgroundColor: Colors.white,),
      home:  const SplashScreen(),
    );
  }
}
