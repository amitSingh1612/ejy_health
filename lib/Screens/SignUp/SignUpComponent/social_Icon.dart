import 'package:ejy_health/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../AuthService/authService.dart';
class SocialIcon extends StatelessWidget {
  const SocialIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        //AuthService.signInWithGoogle(context);

      },
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
         decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(30),
         border: Border.all(width: 2,
           color: kPrimaryColor,),
        shape: BoxShape.circle,
         ),
        child: Image.asset('assets/images/google.png',
            height:35,
        width: 35,
       // color: Colors.green,
        fit: BoxFit.cover),
      ),
    );
  }
}

