import 'package:ejy_health/Utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final Function()? onTap;
  final bool expand;
  final int? maxLines;

  const CustomTextFormField({super.key,
    required this.controller,
    required this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.onFieldSubmitted,
    this.validator,
    this.onTap,
    this.expand =false,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      expands: expand,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      onTap: onTap,
      maxLines: maxLines,

      decoration: InputDecoration(
        filled: true,
      fillColor:Colors.grey[300],
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                29),
            borderSide:
           const  BorderSide(color: Colors.black)),

        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(29),

            borderSide:
            const BorderSide(color: Colors.white)
      ),
        //labelText: labelText,
        hintText: hintText,
          contentPadding: const EdgeInsets.all(20.0),
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        // border:  OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(29),
        // borderSide: const BorderSide(color: Colors.redAccent)),
      ),
    );
  }
}
