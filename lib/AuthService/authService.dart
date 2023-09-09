// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:http/http.dart' as http;
//
// class AuthService {
//   static const String apiUrl = 'https://your-nodejs-api-url.com'; // Replace with your API URL
//
//   static final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
//
//   static Future<void> signInWithGoogle(BuildContext context) async {
//     try {
//       final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
//       if (googleSignInAccount != null) {
//         final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
//         final String accessToken = googleSignInAuthentication.accessToken;
//         final String idToken = googleSignInAuthentication.idToken;
//
//         // Send the Google Sign-In data to your Node.js server for verification
//         final response = await http.post(
//           Uri.parse('$apiUrl/google-sign-in'), // Replace with your API endpoint for Google Sign-In verification
//           headers: <String, String>{
//             'Content-Type': 'application/json',
//           },
//           body: jsonEncode(<String, String>{
//             'accessToken': accessToken,
//             'idToken': idToken,
//           }),
//         );
//
//         if (response.statusCode == 200) {
//           // Successful authentication with your server
//           // You may receive a custom authentication token or user data in the response
//           final Map<String, dynamic> responseData = jsonDecode(response.body);
//           final String customAuthToken = responseData['customAuthToken'];
//
//           // Store the customAuthToken securely for future requests
//         } else {
//           // Authentication with your server failed
//           throw Exception('Authentication with server failed');
//         }
//       }
//     } catch (error) {
//       // Handle any errors, e.g., display an error message
//       print('Error signing in with Google: $error');
//     }
//   }
// }
//
