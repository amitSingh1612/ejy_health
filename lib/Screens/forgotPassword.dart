import 'package:animate_do/animate_do.dart';
import 'package:ejy_health/Screens/Login/LoginScreen.dart';
import 'package:ejy_health/Widgets/CustomTextFormFeild.dart';
import 'package:ejy_health/Widgets/buttons.dart';
import 'package:flutter/material.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final formKey=GlobalKey<FormState>();
  final otpController=TextEditingController();
  final passwordController=TextEditingController();
  final confirmPasswordController=TextEditingController();

  @override
  void dispose() {
    otpController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();

    super.dispose();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text(" Forgot Password"),
      centerTitle: true,
        elevation: 0,
      ),
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
                  labelText: " Your Email",
                  controller: otpController,
                  hintText: " Email",
                  validator: (v){
                    if(v!.isEmpty){
                      return "Please Enter ur registered Email";}
                    return null;
                  },
                  keyboardType:TextInputType.emailAddress,

                ),

                const SizedBox(height: 10,),
                CustomTextFormField(
                  labelText: "Email OTP",
                  controller: otpController,
                  hintText: " Email OTP",
                  validator: (v){
                    if(v!.isEmpty){
                      return "Please Enter OTP";}
                    return null;
                  },
                  keyboardType:TextInputType.number,

                ),
                const SizedBox(height: 10,),
                CustomTextFormField(
                  labelText: "Password",
                  maxLines: 1,
                  controller: passwordController,
                  hintText: " Password",
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
                  maxLines: 1,
                  labelText: "Confirm Password",
                  controller: confirmPasswordController,
                  hintText: "  confirm Password",
                  validator: (v){
                    if(v !=passwordController.value.text){
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
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=> const LoginScreen()));
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
