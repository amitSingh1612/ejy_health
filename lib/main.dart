import 'package:ejy_health/Screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
void main(){

  runApp(
      const ProviderScope( child:MyApp()));

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
