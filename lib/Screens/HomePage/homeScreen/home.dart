import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.yellowAccent,
      body:  Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(" Welcome to EJY health community",
            style: TextStyle(fontSize: 20,color: Colors.black),),
          SizedBox(height: 7,),
          Text("Please Update your profile",  style: TextStyle(fontSize: 20,color: Colors.red),)
        ],
      )),
    );
  }
}










