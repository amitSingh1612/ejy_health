import 'package:ejy_health/Screens/HomePage/Drawer/Account/Profile/EditProfile/EditProfileComponent/profileDetails.dart';
import 'package:ejy_health/Widgets/buttons.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ejy_health/Models/profileDataModel.dart';
import 'package:intl/intl.dart';
import '../../../../../../Provider/profile_provider.dart';
import 'EditProfileComponent/profilePic.dart';

class EditProfileScreen extends ConsumerStatefulWidget {

  final ProfileData initialProfileData;
  const EditProfileScreen({super.key,  required this.initialProfileData});

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}
class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  Gender? selectedGender;
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

  void saveData(){
    final updatedData= ProfileData(
      name: " ",
        email: " ",
        gender: selectedGender ?? Gender.none,
        phoneNumber: mobileController.text,
        dateOfBirth: DateFormat('dd-MM-yyyy').parse(dateOFBirthController.text),
        address: addressController.text
    );

    ref.read(profileProvider.notifier).updateData(updatedData);
    Navigator.pop(context);


  }
  @override
  void initState() {
    super.initState();
    mobileController.text = widget.initialProfileData.phoneNumber;
    dateOFBirthController.text =
        DateFormat('dd-MM-yyyy').format(widget.initialProfileData.dateOfBirth);
    addressController.text = widget.initialProfileData.address;
    selectedGender = widget.initialProfileData.gender;
  }



  @override

  Widget build(BuildContext context, ) {

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
              child:
              ProfileDetails(
                  mobileController: mobileController,
                  dateOFBirthController: dateOFBirthController,
                  addressController: addressController,

               ),
            ),
    const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomMaterialButton(
                text: "Save",
                  onPressed:saveData,
                  ),
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




