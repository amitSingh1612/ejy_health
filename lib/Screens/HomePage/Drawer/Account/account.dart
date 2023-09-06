
import 'package:ejy_health/Screens/HomePage/Drawer/Account/ChangePassword/changePassword.dart';
import 'package:ejy_health/Screens/HomePage/mainHome.dart';
import 'package:ejy_health/Widgets/buttons.dart';
import 'package:flutter/material.dart';

import 'Profile/profile.dart';
class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=>const HomeScreen()));
          },
          icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 20),
        ),
      ),
      backgroundColor: Colors.yellow.shade50,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 115,
                width: 115,
                margin: const EdgeInsets.only(top: 20,bottom: 20),
                child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/gymNew.jpg",)
                ),
              ),
              const SizedBox(height: 20,),
              CustomListTile(leading: const Icon(Icons.person),
              trailing: const Icon(Icons.arrow_forward_ios_rounded) ,
              title: " My Profile" ,
                onTap: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=> const Profile()));
                },
              ),
              const SizedBox(height: 20,),
             const CustomListTile(
               leading:Icon(Icons.notification_add) ,
               title: " Notification",
               trailing: Icon(Icons.arrow_forward_ios_rounded),
             ),
              const SizedBox(height: 20,),
              const CustomListTile(
                title: " Settings",
                leading: Icon(Icons.settings),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
              const SizedBox(height: 20,),
               CustomListTile(
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context)=>const ChangePassword()));
                 },
                title: "Change Password",
                leading: const Icon(Icons.lock_reset),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
              const SizedBox(height: 20,),
              const CustomListTile(
                title: "Help Center",
                leading: Icon(Icons.help_outline_outlined),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
              const SizedBox(height: 20,),
              const CustomListTile(
                title: "Log Out",
                leading: Icon(Icons.logout),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),


            ],
          ),
        ),
      ),
    );
}
}
