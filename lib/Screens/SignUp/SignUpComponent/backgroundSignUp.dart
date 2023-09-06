import 'package:flutter/material.dart';
class BackgroundSignUp extends StatelessWidget {
  final Widget child;
  const BackgroundSignUp({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Stack(
          alignment: Alignment.center,
          children: [
          Positioned(
          left: 0,
          top: 0,
          child: Image.asset("assets/images/signup_top.png",width: size.width * 0.35,)),
      Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            "assets/images/main_bottom.png", width: size.width * 0.4,)),
      child,
      ]
    )
    );
  }
}
