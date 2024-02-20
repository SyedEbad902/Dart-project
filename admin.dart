import 'dart:io';

import 'items.dart';
import 'main.dart';

admin() {
  print("Admin Login");
  print('Enter Email');
  var adminEmail = stdin.readLineSync();
  print('Enter Password');
  var adminpass = stdin.readLineSync();
  bool adminLogin = true;
  while (adminLogin) {
    if (adminEmail == 'admin' && adminpass == 'admin') {
      adminLogin = false;
      mainMenu();
    } else {
      print("Please Enter Correct Username or Password!");
      print('Enter Email');
      adminEmail = stdin.readLineSync();
      print('Enter Password');
      adminpass = stdin.readLineSync();
    }
  }
}

mainMenu() {
  print("1. Show Items");
  print("2. Show users");
  print("3. Show add items");
  print("Enter Number you Want to See");
  var adminChoice = stdin.readLineSync();
  if (adminChoice == '1') {
    print("All Available Items");
    showFile('Itemdetails.txt');
    print("Main Menu press 1 or Logout Press 0");
    String? adminInput = stdin.readLineSync();
    if (adminInput == "1") {
      mainMenu();
    } else {
      loginPage();
    }
  } else if (adminChoice == '2') {
    print("All Registered Users");
    showFile('credentials.txt');
    print("Main Menu press 1 or Logout Press 0");
    String? adminInput = stdin.readLineSync();
    if (adminInput == "1") {
      mainMenu();
    } else {
      loginPage();
    }
  } else if (adminChoice == "3") {
    print("Enter Item Name");
    var itemToAdd = stdin.readLineSync()!;
    print("Enter Price of Item");
    var priceToAdd = stdin.readLineSync()!;
    addItemToFile('Itemdetails.txt', itemToAdd, priceToAdd);
    print("Item Added Successfully");
    print("Main Menu press 1 or Logout Press 0");
    String? adminInput = stdin.readLineSync();
    if (adminInput == "1") {
      mainMenu();
    } else {
      loginPage();
    }
  }
}
