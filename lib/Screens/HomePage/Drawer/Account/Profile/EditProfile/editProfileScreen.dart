import 'package:ejy_health/Screens/HomePage/Drawer/Account/Profile/EditProfile/EditProfileComponent/profileDetails.dart';
import 'package:ejy_health/Widgets/CustomTextFormFeild.dart';
import 'package:ejy_health/Widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'EditProfileComponent/profilePic.dart';
class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}
class _EditProfileScreenState extends State<EditProfileScreen> {
 // Gender? onSelect;
  final mobileController= TextEditingController();
  final dateOFBirthController= TextEditingController();
  final addressController=TextEditingController();

  @override
  void dispose() {
    mobileController.dispose();
    dateOFBirthController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: AppBar(
        elevation: 0,
          centerTitle: true,
          title:const Text(" Edit Profile")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 20,),
            Container(
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                shape: BoxShape.rectangle,
               // borderRadius: BorderRadius.circular(30),
              ),
              child:  Text(" Edit Your Profile",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize:18),
              )
            ),
            const SizedBox(height: 20,),
            Center(
              child: ProfileDetails(
                  mobileController: mobileController,
                  dateOFBirthController: dateOFBirthController,
                  addressController: addressController),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomMaterialButton(text: "Save",
                  onPressed: (){},),
                  const SizedBox(height: 10,),
                  CustomMaterialButton(text: " Cancel",
                  onPressed: (){
                 Navigator.pop(context);
                  },)
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}




