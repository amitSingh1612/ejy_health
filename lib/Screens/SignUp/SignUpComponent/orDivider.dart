import 'package:ejy_health/Utils/colors.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width *0.8,
      child: Row(
        children: const [
         Expanded(
           child: Divider(color: Colors.black,
              height: 1.5,
           thickness: 1.2),
         ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("OR",style: TextStyle(fontWeight: FontWeight.w600,color: kPrimaryColor),),),
          Expanded(
            child: Divider(color:Colors.black,
              height: 1.5,
            thickness: 1.2),
          ),  
        ],
      ),
    );
  }
}
