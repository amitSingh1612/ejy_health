import 'package:ejy_health/Screens/HomePage/Drawer/Account/Profile/EditProfile/editProfileScreen.dart';
import 'package:ejy_health/Screens/HomePage/Drawer/Account/account.dart';
import 'package:ejy_health/Widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ejy_health/Provider/profile_provider.dart';
import 'package:intl/intl.dart';

import '../../../../../Models/profileDataModel.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  String _getGenderString(Gender? gender) {
    if (gender == Gender.male) {
      return 'Male';
    } else if (gender == Gender.female) {
      return 'Female';
    } else if (gender == Gender.other) {
      return 'Other';
    } else {
      return 'Unknown';
    }
  }


  @override
  Widget build(BuildContext context) {
    //final updateProfile=ref.watch(profileProvider);

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
        Consumer(
          builder: (context, ref, child) {
            final currentData=ref.watch(profileProvider);
            return IconButton(
                onPressed:(){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context)=> EditProfileScreen(
                            initialProfileData: currentData,
                          )));
                },
                icon: Icon(Icons.edit,size: 27, color: Colors.blueAccent.shade400,));

          }

        )
      ]),
      body:SingleChildScrollView(
        child: Column(
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
            child: Consumer(

              builder: (context, ref, child) {
                final updateProfile=ref.watch(profileProvider);
                return  Column(
                children:  [
                CustomListTile(
                leading: const Text("Name"),
                trailing:  Text(updateProfile.name ??" ")
                ),
                const Divider(),
                CustomListTile(
                leading:const Text("Gender"),
                  trailing: Text(_getGenderString(updateProfile.gender)),

                ),
                const Divider(),
                CustomListTile(
                leading:const Text("Email"),
                trailing:Text(updateProfile.email ?? " "),
                ),
                const Divider(),
                CustomListTile(
                leading: const Text("Phone No"),
                trailing: Text(updateProfile.phoneNumber ?? " "),
                ),
                const Divider(),
                CustomListTile(
                leading: const Text("Date Of Birth"),
                trailing: Text(DateFormat('dd-MM-yyyy').format( updateProfile.dateOfBirth)),
                ),
                const Divider(),
                CustomListTile(leading: const Text("Address"),
                trailing: Text(updateProfile.address ?? " "),),
                const SizedBox(height: 10,),



                ]
                );
              },

            )
                ),
          ],
        ),
      ),
    );
  }
}

