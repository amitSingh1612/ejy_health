import 'package:ejy_health/Screens/HomePage/mainHome.dart';
import 'package:ejy_health/Screens/forgotPassword.dart';
import 'package:ejy_health/Utils/colors.dart';
import 'package:ejy_health/Widgets/CustomTextFormFeild.dart';
import 'package:ejy_health/Widgets/buttons.dart';
import'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  const TextForm({Key? key}) : super(key: key);

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
 // GlobalKey formKey=GlobalKey<FormState>();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  bool loading=false;

  final formKey=GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return
      Container(
        height:size.height * 0.3,
        width: size.width *0.8,
        decoration: BoxDecoration(shape: BoxShape.rectangle
          , color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),),

        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
            children: [
              CustomTextFormField(
                controller: emailController ,
                labelText:"your Email",
                 prefixIcon: Icons.person,
                keyboardType: TextInputType.emailAddress,
                hintText: "Email",
                validator: (v){
                      if(v!.isEmpty) {
                          return "please enter Email";
            }
                      return null;
                      },
              ),

              const SizedBox(height: 10,),
              CustomTextFormField(
                  controller:passwordController,
                  textInputAction: TextInputAction.done,
                  maxLines: 1,
                  obscureText: true,
                  validator: (v){
                   if(v!.isEmpty){
                            return"please enter Password";
                                     }
                          return null;
                  },
                  labelText:"password",
              hintText: "password",
              prefixIcon: Icons.lock,
                suffixIcon: Icons.visibility,
              ),
              //const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(top: 3.0,bottom: 3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  CustomTextButton(
                      onPressed:(){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>const ForgotPassword()));
                      },
                      text:"forgotPassword"),
                  ],
                ),
              ),

              CustomMaterialButton(
                onPressed: (){
                  if( formKey.currentState != null && formKey.currentState!.validate() ){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context)=> const HomeScreen()));
            }
                },
                text:"Login",
              )


            ],
            ),
          ),
        ),
      );
  }
}
