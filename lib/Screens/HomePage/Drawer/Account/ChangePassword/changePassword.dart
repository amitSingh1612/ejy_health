import 'package:animate_do/animate_do.dart';
import 'package:ejy_health/Widgets/CustomTextFormFeild.dart';
import 'package:ejy_health/Widgets/buttons.dart';
import 'package:flutter/material.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final formKey=GlobalKey<FormState>();
  final oldPasswordController=TextEditingController();
  final newPasswordController=TextEditingController();
  final confirmNewPasswordController=TextEditingController();

  @override
  void dispose() {
    oldPasswordController.dispose();
    newPasswordController.dispose();
    confirmNewPasswordController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading: IconButton(
        onPressed: (){
      Navigator.pop(context);
    },
    icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 20),
    ),
    // backgroundColor: const Color(0xFFF5F6F9),
    //backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(" Change Password",
    style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 24),),),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          // padding: const EdgeInsets.all(10),
          // alignment: Alignment.center,
          child: Form(
            key: formKey,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextFormField(
                  labelText: " Old Password",
                  maxLines: 1,
                  controller: oldPasswordController,
                  hintText: "Old Password",
                  obscureText: true,
                  validator: (v){
                    if(v!.isEmpty){
                      return "Please Enter Your Old Password";}
                    if(v.length !=8){
                      return "Please Enter Password at least 8 characters ";
                    }
                    return null;
                  },
                  keyboardType:TextInputType.text,
                  textInputAction: TextInputAction.go,
                ),
                const SizedBox(height: 10,),
                CustomTextFormField(
                  labelText: " new Password",
                  maxLines: 1,
                  controller: newPasswordController,
                  hintText: " Enter New Password",
                  obscureText: true,
                  validator: (v){
                    if(v!.isEmpty){
                      return "Please Enter Password";}
                    if(v.length !=8){
                      return "Please Enter Password at least 8 characters ";
                    }
                    return null;
                  },
                  keyboardType:TextInputType.text,
                  textInputAction: TextInputAction.go,
                ),
                const SizedBox(height: 10,),
                CustomTextFormField(
                  labelText: "Confirm Password",
                  maxLines: 1,
                  controller: confirmNewPasswordController,
                  hintText: "confirm New Password",
                  validator: (v){
                    if(v !=newPasswordController.value.text){
                      return " Please Enter same password";
                    }
                    return null;
                  },
                  keyboardType:TextInputType.text,
                  textInputAction: TextInputAction.done,
                ),

                const SizedBox(height: 20,),
                FadeInUp(
                  duration: const Duration(seconds: 2),
                  child: CustomMaterialButton(
                    text: "Submit",
                    onPressed: (){
                      if(formKey.currentState!.validate()){
                        Navigator.pop(context);
                      }

                    },),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
