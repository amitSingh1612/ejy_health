import 'package:ejy_health/Widgets/buttons.dart';
import 'package:flutter/material.dart';

import '../../Login/LoginScreen.dart';
class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        CustomTextButton(
          text: "Already Have an Account..?",
          onPressed: (){
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=>const LoginScreen()));
          },
        ),
      ],
      );

  }
}
