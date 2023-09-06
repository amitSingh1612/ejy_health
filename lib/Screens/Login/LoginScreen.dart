import 'package:ejy_health/Screens/Login/LoginComponent/background.dart';
import 'package:ejy_health/Screens/Login/LoginComponent/textform.dart';
import 'package:ejy_health/Screens/SignUp/signUpScreen.dart';
import 'package:ejy_health/Utils/colors.dart';
import 'package:ejy_health/Widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Background(
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
             const Text(" LOGIN",style: TextStyle(fontWeight: FontWeight.bold),),
               SizedBox(height: size.height *0.03),
              SvgPicture.asset("assets/images/login.svg",height: size.height*0.35,),
              SizedBox(height: size.height *0.03),
              const TextForm(),
              SizedBox(height: size.height *0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const  Text("Don't have an Account ?",style:TextStyle(color: kPrimaryColor),),
                  CustomTextButton(onPressed: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder:(context)=>const SignUp()));
                  },
                  text:'SignUp',)
                ],
              )
            ],
          ),
        ) ,),
    );
  }
}
