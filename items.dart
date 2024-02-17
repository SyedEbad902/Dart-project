import 'dart:io';
//show file function
showFile(String filePath) {
  final file = File(filePath);
  final lines = file.readAsLinesSync();
  lines.forEach(print);
}
// get last number
int getLastItemNumber(String filePath) {
  final file = File(filePath);
  if (!file.existsSync()) {
    return 0;
  }
  final lines = file.readAsLinesSync();
  if (lines.isEmpty) {
    return 0;
  }
  final lastLine = lines.last;
  final lastItemNumber = int.tryParse(lastLine.split('.')[0]);
  return lastItemNumber ?? 0;
}

// Add item to file with proper number
void addItemToFile(
    String filePath, String newItem, String itemPrice) {
  final file = File(filePath);
  final lastItemNumber = getLastItemNumber(filePath);
  final nextItemNumber = lastItemNumber + 1;
  final newItemLine =
      '$nextItemNumber. Item name:$newItem, Price:$itemPrice';
  file.writeAsStringSync('$newItemLine\n', mode: FileMode.append);
}

//void addItemsToFile(String itemName, String itemQty, String itemPrice) {
// final file = File('Itemdetails.txt');
// // file.writeAsStringSync(
// //     'Item name:$itemName, Quantity:$itemQty, Price:$itemPrice\n',
// //     mode: FileMode.append);
//}

// void main() {
//   // print("Enter Item Name");
//   // String nameOfItem = stdin.readLineSync()!;
//   // print("Enter Item Quantity");
//   // String quantityOfItem = stdin.readLineSync()!;
//   // print("Enter Item Price");
//   // String priceOfItem = stdin.readLineSync()!;
//   // addItemsToFile(nameOfItem, quantityOfItem, priceOfItem);
//   // print("Item added Successfuly");
//   // showFile('Itemdetails.txt');
//   addItemToFile('Itemdetails.txt', 'Headphones', '900 Rs');
//   addItemToFile('Itemdetails.txt', 'Smartphone',  '2500 Rs');
//   addItemToFile('Itemdetails.txt', 'Laptop',  '40000 Rs');
//   addItemToFile('Itemdetails.txt', 'Tablet', '10000 Rs');
//   addItemToFile('Itemdetails.txt', 'Smartwatch', '5000 Rs');
//   addItemToFile('Itemdetails.txt', 'Chicken','700 Rs');
//   addItemToFile('Itemdetails.txt', 'Apples','200Rs');
//   addItemToFile('Itemdetails.txt', 'Milk ','250 Rs');
//   addItemToFile('Itemdetails.txt', 'Eggs ','40 Rs');
//   addItemToFile('Itemdetails.txt', 'Bread','100 Rs');
//   addItemToFile('Itemdetails.txt', 'Potatoes ','50 Rs');
//   addItemToFile('Itemdetails.txt', 'Spinach', '50 Rs');
//   addItemToFile('Itemdetails.txt', 'Rice','300 Rs');
// }
