import 'package:ejy_health/Screens/Login/LoginScreen.dart';
import 'package:flutter/material.dart';


class Logout extends StatelessWidget {
  const Logout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(" Warning"),
      content: const Text(" Are you Sure You want to Logout..?"),
      actions: [
        TextButton(
            onPressed:(){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder:(context)=>const LoginScreen()));
            },
            child:const Text("Yes")),
        TextButton(
            onPressed:(){
              Navigator.pop(context);
            },
            child:const Text(" No")),


      ],


    );
  }
}
