import 'package:ejy_health/Screens/SignUp/SignUpComponent/alreadyHaveAccount.dart';
import 'package:ejy_health/Screens/SignUp/SignUpComponent/containerBox.dart';
import 'package:ejy_health/Screens/SignUp/SignUpComponent/social_Icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'SignUpComponent/backgroundSignUp.dart';
import 'SignUpComponent/orDivider.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:BackgroundSignUp(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("SIGNUP",
                style:TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: size.height * 0.03,),
              SvgPicture.asset("assets/images/signup.svg",
                height: size.height *0.35,),
              SizedBox(height: size.height * 0.03,),
             const  ContainerBox(),
              const SizedBox(width: 5,),
             // SizedBox(height: size.height * 0.03,),
             const  AlreadyHaveAccount(),
             // SizedBox(height: size.height * 0.03,),
              const SizedBox(width: 4,),
              const OrDivider(),
              //SizedBox(height: size.height * 0.03,),
              const SocialIcon()
            ],
          ),
        ),
      ),
    );
  }
}

