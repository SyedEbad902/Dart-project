import 'dart:io';

import 'items.dart';

admin() {
  print("Admin Login");
  print('Enter Email');
  var adminEmail = stdin.readLineSync();
  print('Enter Password');
  var adminpass = stdin.readLineSync();
  if (adminEmail == 'admin' && adminpass == 'admin') {
    print("1. Show Items");
    print("2. Show users");
    print("3. Show add items");
    print("Enter Number you Want to See");
    var adminChoice = stdin.readLineSync();
    if (adminChoice == '1') {
      print("All Available Items");
      showFile('Itemdetails.txt');
    } else if (adminChoice == '2') {
      showFile('credentials.txt');
    } else if (adminChoice == "3") {
      print("Enter Item Name");
      var itemToAdd = stdin.readLineSync()!;
      print("Enter Price of Item");
      var priceToAdd = stdin.readLineSync()!;
      addItemToFile('Itemdetails.txt', itemToAdd, priceToAdd);
      print("Item Added Successfully");
    }
  }
}
