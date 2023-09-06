import 'package:ejy_health/Widgets/CustomTextFormFeild.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
enum Gender{ male,female,other }

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({
    super.key,
    required this.mobileController,
    required this.dateOFBirthController,
    required this.addressController,
  });

  final TextEditingController mobileController;
  final TextEditingController dateOFBirthController;
  final TextEditingController addressController;


  @override


  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  Gender? onSelect;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.96,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextFormField(
            labelText: "mobile No",
            hintText: " phone No",
            controller: widget.mobileController,
            prefixIcon: Icons.call,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 10,),
          DropdownButtonFormField(

            value:null ,
            items: [
              ...Gender.values.map((e) => DropdownMenuItem(
                  value: e,
                  child:Text(e.name))).toList()
            ],

            onChanged:(value){
              setState(() {
                onSelect=value;
              });
            },
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
                labelText: "Gender",
                prefixIcon:const Icon(Icons.people)
            ),
          ),
          const SizedBox(height: 10,),

          CustomTextFormField(
            controller:widget.dateOFBirthController,
            textInputAction: TextInputAction.next,
            labelText:" date",
            hintText: " DOB",
            prefixIcon: Icons.calendar_month,
            onTap: () async{
              DateTime? pickedDate= await showDatePicker(
                  context: context,
                  initialDate:DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now());

              if(pickedDate != null){
                {
                  setState(() {
                    widget.dateOFBirthController.text= DateFormat('dd-MM-yyyy').format(pickedDate);
                  });
                }

              }
            },
          ),



          const SizedBox(height: 10,),
          SizedBox(
            height: 120,
            child: CustomTextFormField(
              controller: widget.addressController,
              expand: true,
              maxLines: null,
              labelText: "Address",
              hintText: "address",
              prefixIcon: Icons.home,
              keyboardType: TextInputType.text,
            ),
          ),


        ],
      ),
    );
  }
}