import 'package:ejy_health/Utils/colors.dart';
import 'package:flutter/material.dart';

 class CustomMaterialButton extends StatelessWidget {
   final String text;
   final VoidCallback onPressed;
    const CustomMaterialButton({super.key,
     required this.text,
     required this.onPressed
 });
   @override
   Widget build(BuildContext context) {
     return MaterialButton(
         onPressed: onPressed,
       color:kPrimaryColor,
       //splashColor: Colors.red[800],
       minWidth: 500.0,
       shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30.0)),
       padding: const  EdgeInsets.symmetric(
         vertical: 12.0,
       ),
       child:Text(text,
         style: const TextStyle(
             fontSize: 18.0,
           color: Colors.white),),
     );
   }
 }

 class CustomTextButton extends StatelessWidget {
   final VoidCallback onPressed;
   final String text;
   const CustomTextButton(
   {super.key,
     required this.onPressed,
     required this.text,
 }
       );

   @override
   Widget build(BuildContext context) {
     return TextButton(
         onPressed: onPressed,
         child: Text(text,
              style: const TextStyle(
           fontStyle: FontStyle.italic,
           fontSize: 16.0,
           fontWeight: FontWeight.w700,
         ),),

     );
   }
 }

 class CustomListTile extends StatelessWidget {
   const CustomListTile({super.key,
     required this.leading,
     required this.trailing,
     this.title,
     this.onTap
 }
       );


   final Widget leading;
   final Widget trailing;
final String ?title;
final void Function()? onTap;
   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10),
       child: ListTile(
         onTap: onTap,
         title:Text(title ?? " "),
         tileColor: Colors.grey.withOpacity(0.1),
        // tileColor: const Color(0xFFF5F6F9),
         leading: leading is String ?
           Text(leading as String,style:const TextStyle(fontSize: 24))
             : leading,

         trailing: trailing is String ?
         Text((trailing is String) as String,style:const TextStyle(fontSize: 19))
             : trailing,
       ),
     );
   }
 }



