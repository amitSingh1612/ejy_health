import 'package:ejy_health/Screens/HomePage/Drawer/drawer.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text(" welcome here"),
      ),
      drawer:const MainDrawer(),
      body: Center(child: Column(
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
