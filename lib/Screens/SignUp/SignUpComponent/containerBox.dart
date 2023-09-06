import 'package:ejy_health/Screens/verificationScreen.dart';
import 'package:ejy_health/Widgets/CustomTextFormFeild.dart';
import 'package:flutter/material.dart';

import '../../../Widgets/buttons.dart';


class ContainerBox extends StatefulWidget {
  const ContainerBox({Key? key}) : super(key: key);

  @override
  State<ContainerBox> createState() => _ContainerBoxState();
}

class _ContainerBoxState extends State<ContainerBox> {
  final formKey=GlobalKey<FormState>();
  TextEditingController nameController=  TextEditingController();
  final _emailController =TextEditingController();
  @override
  void dispose() {
    nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
          left: 20,
          right: 20,

        ),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextFormField(controller: nameController,
                  labelText: "Name",
                  hintText: "Your Name",
                  validator: (v){
                    if(v!.isEmpty ){
                      return " please Enter your Name";}
                  return null;},
                    prefixIcon: Icons.person,
                    keyboardType: TextInputType.text,
                  ),
                 const  SizedBox(height: 10,),
                  CustomTextFormField(
                      controller: _emailController,
                      hintText: 'your Email',
                      labelText:"Email",
                  keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icons.email,
                    validator: (v){
                        if(v!.isEmpty){
                          return " Please Enter Valid Email address";
                        }
                        return null;
                    },
                  ),
                  const SizedBox(height: 7,),
                  CustomMaterialButton(text: "SignUp",
                  onPressed: (){
                    if(formKey.currentState!.validate()){
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context)=>const VerificationScreen()));
                    }
                  },)

              ],
              ),
             ),
          ),
        ),
    );
  }
}

