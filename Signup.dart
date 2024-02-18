import 'dart:io';

import 'login.dart';

void signUpDetails() {
  print("Enter your Email and Password to Register");
  print('Enter Username:');
  String email = stdin.readLineSync()!;
  print('Enter Password:');
  String password = stdin.readLineSync()!;
  addCredentialsToFile(email, password);
  print("Sucessfully Register");
  loginCheck();
}














// import 'dart:io';

// import 'login.dart';

// class Signup extends Login {
//   // signupToApp() {
//   //   print("Enter Email ");
//   //   var usern = stdin.readLineSync();
//   //   print("Enter Password");
//   //   var password = stdin.readLineSync();

//   // }
//   String? username;
//   String? password;
//   Signup(this.username, this.password);
//   Map<String, dynamic> toMap() {
//     return {
//       'username': username,
//       'password': password,
//     };
//   }
  
// }
