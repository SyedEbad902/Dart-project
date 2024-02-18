import 'dart:io';

import 'items.dart';

class Dashboard {
  List currentItem = [];

  dashboard() {
    print("Dashboard");
    print("Avaliable Items");
    print("===============================");
    showFile('Itemdetails.txt');
    print("Enter serial number of item to buy");
    int buyItemNumber = int.parse(stdin.readLineSync()!);
    final file = File('Itemdetails.txt');
    final readFile = file.readAsLinesSync();
    var readLine = readFile[buyItemNumber - 1];
    print(readLine);
    currentItem.add(readLine);
    print("Added to cart");
    buyMoreItems();
  }

  buyMoreItems() {
    print("You want to buy more items y/n");
    var buyMore = stdin.readLineSync();
    if (buyMore == 'Y' || buyMore == 'y') {
      dashboard();
    } else if (buyMore == 'n' || buyMore == 'N') {
      print("Your Current Items:");
      for (var i in currentItem) {
        print(i);
      }
    } else {
      print("You Enter Wrong Number");
      dashboard();
    }
  }
}
