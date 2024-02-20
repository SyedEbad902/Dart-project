import 'dart:io';

import 'items.dart';
import 'main.dart';

class Dashboard {
  List currentItem = [];

  dashboard() {
    print("Dashboard");
    print("Avaliable Items");
    print("===============================");
    showFile('Itemdetails.txt');
    print("Enter serial number of item to buy");
    int buyItemNumber = int.parse(stdin.readLineSync()!);

    if (buyItemNumber == 0) {
      exit(0);
    } else {
      final file = File('Itemdetails.txt');
      final readFile = file.readAsLinesSync();
      var readLine = readFile[buyItemNumber - 1];
      print(readLine);
      currentItem.add(readLine);
      print("Added to cart");
    }
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
      print("Enter 0 to Logout");
      var logout = stdin.readLineSync();
      if (logout == '0') {
        loginPage();
      }
    } else {
      print("You Enter Wrong Number");
      dashboard();
    }
  }
}
