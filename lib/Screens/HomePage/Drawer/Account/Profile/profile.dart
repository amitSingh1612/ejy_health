import 'package:ejy_health/Screens/HomePage/Drawer/Account/Profile/EditProfile/editProfileScreen.dart';
import 'package:ejy_health/Screens/HomePage/Drawer/Account/account.dart';
import 'package:ejy_health/Widgets/buttons.dart';
import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context)=>const Account()));
          },
          icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 20),
        ),
       // backgroundColor: const Color(0xFFF5F6F9),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(" Account",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 24),),
      actions: [
        IconButton(
            onPressed:(){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> const EditProfileScreen()));
            }, icon: Icon(Icons.edit,size: 27, color: Colors.blueAccent.shade400,))
      ]),
      body:Column(
        children: [
          Container(
            height: 115,
            width: 115,
            margin: const EdgeInsets.only(top: 20,bottom: 20),
            child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/gymNew.jpg",)
            ),
          ),
          const SizedBox(height: 10,),
          const Divider(),
          Container(
            margin:const  EdgeInsets.only(top: 5,bottom: 10),
          child: Column(
            children: const [
              CustomListTile(
                  leading: Text("Name"),
              trailing: Text("Amit Singh")),
              Divider(),
              CustomListTile(
                leading:Text("Gender"),
                trailing:Text("male"),
              ),
              Divider(),
              CustomListTile(
                leading:Text("Email"),
                trailing:Text("amit.ejyHealth@gmail.com"),
              ),
              Divider(),
              CustomListTile(
                leading: Text("Phone No"),
                trailing: Text(" 9015304659"),
              ),
              Divider(),
              CustomListTile(
                leading: Text("Date Of Birth"),
                trailing: Text(" 30th Sept"),
              ),
              Divider(),
              CustomListTile(leading: Text("Address"),
              trailing: Text(" New Delhi"),),
              SizedBox(height: 10,),
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: CustomMaterialButton(
              //     text: " Reset Password",
              //     onPressed:(){},
              //   ),
              // )


            ],
          ),),
        ],
      ),
    );
  }
}

