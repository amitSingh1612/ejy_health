import 'package:ejy_health/Models/profileDataModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ProfileNotifier extends StateNotifier<ProfileData>{
  ProfileNotifier():super(ProfileData(
      address:" xxxxxxx",
  dateOfBirth: DateTime.now(),
  email: " XXXXXX",
  gender:Gender.none,
  name: "xxxxx",
  phoneNumber: "xxxxxxxxxxxxx"));

  void updateData(ProfileData newData){
    state=newData;
  }

}

final profileProvider=StateNotifierProvider<ProfileNotifier,ProfileData>((ref) =>ProfileNotifier());