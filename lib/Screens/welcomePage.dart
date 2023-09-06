import 'package:animate_do/animate_do.dart';
import 'package:ejy_health/Screens/Login/loginScreen.dart';
import 'package:ejy_health/Screens/SignUp/signUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>with TickerProviderStateMixin {

  late AnimationController _animationEjyController,_animationLoginController;
  late Animation _animationEJY;
  late Animation <Offset> _animationLogin;

 



  @override
  void initState() {
    super.initState();
    _animationEjyController=AnimationController(
        vsync: this,
      duration: const Duration(seconds:2),);

    _animationEJY=Tween(begin: 0.0,end: 30.0).animate(
        CurvedAnimation(parent: _animationEjyController,
            curve:Curves.easeInOutBack
           // const Interval(0.0,0.5,curve: Curves.linear)

        ));
     _animationEjyController.forward();


     _animationLoginController=AnimationController(
         vsync:this,
      duration: const Duration(seconds:3)

     );
     _animationLogin=Tween(
         begin: const Offset(-10,0),
         end: const Offset(0,0)).animate(CurvedAnimation(
         parent:_animationLoginController, curve:Curves.easeInOutBack));
     _animationLoginController.forward();

  }

  @override
  void dispose() {
    _animationEjyController.dispose();
    _animationLoginController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          backgroundColor: Colors.white,
          body: Container(
  height:MediaQuery.of(context).size.height,
  width: double.infinity,
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.center,

      children: [

          FadeInUp(
             duration: const Duration(seconds: 3),
            child: Container(
              margin: const EdgeInsets.only(left:10,top: 30,bottom:10,right: 10),

              child:const  Text(" Welcome To EJY health Community",

                  style: TextStyle( fontWeight: FontWeight.bold,fontSize: 21,color: Colors.black,fontStyle:FontStyle.italic)),



            ),
          ),

          const SizedBox(height: 15,),
        AnimatedBuilder(
          animation: _animationEjyController,
          child: Image.asset("assets/images/ejyHealthLogo.jpg",
            height: 150,
            width: 100,),
          builder: (context,child)=>Transform(
            transform:Matrix4.identity()
              ..setEntry(3,2,0.005)
              .. rotateY(2 * pi * _animationEJY.value),
            alignment: Alignment.center,
            child: child,

          ),
        ),

        const SizedBox(height: 20,),
          FadeInLeft(
            duration: const Duration(seconds: 3),
            child: SvgPicture.asset("assets/images/chat.svg",

            height: MediaQuery.of(context).size.height*0.32,),
          ),

          const SizedBox(height: 30,),

  AnimatedBuilder(
      animation: _animationLoginController,
      child: MaterialButton(onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const LoginScreen()));},
              minWidth: 300,

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                splashColor: Colors.blue,

                elevation: 5,

                color:const  Color(0xff6f35a5),

                padding: const EdgeInsets.symmetric(vertical: 15),

                 textColor: Colors.white,

                child: const Text("Login",style: TextStyle(fontSize: 18)),
              ),
      builder: (context,child)=> SlideTransition(
          position:_animationLogin,
        child: child,
      ),
  ),


          const SizedBox(height: 15,),

          FadeInUp(
            duration: const Duration(seconds: 4),
            child: MaterialButton(onPressed: (){

              Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=> const SignUp()));

            },

              minWidth: 300,

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

              splashColor: Colors.green[300],

              elevation: 5,

              color:const  Color(0xfff1e6ff),

              padding: const EdgeInsets.symmetric(vertical: 15),

              textColor: Colors.black,

              child: const Text("Sign Up",style: TextStyle(fontSize: 18)),



            ),
          )

      ],

  ),
),
        
    );
  }
}
