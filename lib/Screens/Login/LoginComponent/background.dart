import'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
// final String leftTop='assets/images/main_top.png';
// final String bottomRight="assets/images/login_bottom.png";
// final String leftTopSignUp=  'assets/images/signup_top.png';
// final String bottomLeftSignUp= "assets/images/main_bottom.png";
  const Background({
    required this.child,

    super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              left: 0,
              top: 0,
              child: Image.asset("assets/images/main_top.png",width: size.width * 0.35,)),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/images/login_bottom.png", width: size.width * 0.4,)),
          child,

        ],
      ),

    );
  }
}

