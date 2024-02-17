import 'dart:io';

import 'dashboard.dart';

void addCredentialsToFile(String email, String password) {
  final file = File('credentials.txt');
  file.writeAsStringSync('$email,$password\n', mode: FileMode.append);
}

bool doCredentialsExist(String email, String password) {
  final file = File('credentials.txt');
  if (!file.existsSync()) {
    return false;
  }
  final credentials = file.readAsLinesSync();
  return credentials.any((cred) {
    final parts = cred.split(',');
    return parts[0] == email && parts[1] == password;
  });
}

void loginCheck() {
  print("Enter your Login Details");
  print('Enter Username:');
  String emailToCheck = stdin.readLineSync()!;
  print('Enter password:');
  String passwordToCheck = stdin.readLineSync()!;
  if (doCredentialsExist(emailToCheck, passwordToCheck)) {
    print('Welcome $emailToCheck to Ecommerce Store ');
    Dashboard();
  } else {
    print('Credentials do not exist in the file.');
  }
}














// import 'dart:io';

// import 'Signup.dart';

// class Login {
//   loginToApp() {
//     List<Map> users = [
//       {"email": "abc123", "Pass": "1234"},
//       {"email": "abc124", "Pass": "1256"}
//     ];
//     void addSignUpDetails(Signup signup) {
//     users.add(signup.toMap());
//   }

//     print("Enter Email ");
//     var email = stdin.readLineSync();
//     print("Enter Password");
//     var pass = stdin.readLineSync();
//     for (var i = 0; i < users.length; i++) {
//       if (users[i]["email"] == email && users[i]["Pass"] == pass) {
//         print("User found");
//         break;
//       } else {
//         print("User not found");
//         break;
//       }
//     }
//     // print(users[0].values);
//     // if (users[]) {
//     //   print("USer Find");
//     // } else {
//     //   print("USer not found");
//     // }
//   }
// }
