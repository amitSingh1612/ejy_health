import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(" Welcome to EJY health community \n Search Screen",
            style: TextStyle(fontSize: 20,color: Colors.black),),
          SizedBox(height: 7,),
          Text("we are loading data from Server.....",  style: TextStyle(fontSize: 20,color: Colors.red),)
        ],
      )),
    );
  }
}
