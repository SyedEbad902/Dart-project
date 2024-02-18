import 'dart:io';
import 'Signup.dart';
import 'admin.dart';
import 'login.dart';

void main() {
  print("Welcome to Ecommerce Store");
  print("1. Login");
  print("2. Signup");
  print("3. Login as Admin");
  print("Enter 1 to Login and 2 to Signup and 3 to Admin Login");
  var input = stdin.readLineSync();
  if (input == '1') {
    loginCheck();
  } else if (input == '2') {
    signUpDetails();
  } else if (input == '3') {
    admin();
  }
}
