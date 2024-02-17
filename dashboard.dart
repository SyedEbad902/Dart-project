import 'dart:io';

import 'items.dart';

Dashboard() {
  print("Avaliable Items");
  print("===============================");
  showFile('Itemdetails.txt');
  print("Enter serial number of item to buy");
  int buyItemNumber = int.parse(stdin.readLineSync()!);
  final file = File('Itemdetails.txt');
  final readFile = file.readAsLinesSync();
  var readLine = readFile[buyItemNumber - 1];
  print(readLine);
  buyMoreItems();
}

buyMoreItems() {
  print("You want to buy more items y/n");
  var buyMore = stdin.readLineSync();
  if (buyMore == 'Y' || buyMore == 'y') {
    Dashboard();
  } else {
    exit(0);
  }
}
