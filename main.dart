import 'dart:io';
import 'Signup.dart';
import 'admin.dart';
import 'login.dart';

void main() {
  loginPage();
}

loginPage() {
  print("Welcome to Ecommerce Store");
  print("1. Login");
  print("2. Signup");
  print("3. Login as Admin");
  print("4. Exit");
  print("Enter 1 to Login and 2 to Signup 3 to Admin Login and 4 to Exit");
  var input = stdin.readLineSync();
  if (input == '1') {
    loginCheck();
  } else if (input == '2') {
    signUpDetails();
  } else if (input == '3') {
    admin();
  } else if (input == '4') {
    exit(0);
  }
}
