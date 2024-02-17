import 'dart:io';

admin() {
  print("Admin Login");
  print('Enter Email');
  var adminEmail = stdin.readLineSync();
  print('Enter Password');
  var adminpass = stdin.readLineSync();
  if (adminEmail == 'admin' && adminpass == 'admin') {
    print("1. Show Items");
    print("2. Show users");
    print("1. Show add items");
  }
}
