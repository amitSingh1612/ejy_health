import 'package:flutter/material.dart';

enum Gender{ male,female,other, none }


class ProfileData {
  final String? name;
  final Gender gender;
  final String? email;
  final String phoneNumber;
  final DateTime dateOfBirth;
  final String address;

  ProfileData({
    required this.gender,
    required this.phoneNumber,
    required this.dateOfBirth,
    required this.address,
    this.name,
    this.email,

  });
}
