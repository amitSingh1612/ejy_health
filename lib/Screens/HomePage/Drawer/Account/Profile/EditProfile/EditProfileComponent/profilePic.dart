import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,


        children: [
          const CircleAvatar(
              backgroundImage: AssetImage("assets/images/gymNew.jpg")
          ),
          Positioned(
            bottom: 0,
            right: -10,
            child:SizedBox(

              width: 46,
              height: 46,
              child:Card(
                  shape: const CircleBorder(
                  ),
                  color: Colors.blueAccent.withOpacity(0.5),
                  child: const Icon(Icons.camera_alt, color: Colors.white54,size: 24,)),
            ),

          )
        ],),);
  }
}