// ignore_for_file: non_constant_identifier_names

import "dart:math";
import "dart:io";
import 'package:full/gk&dw_questions.dart' as qm;

void main() {
  int Toption;

  while (true) {
    print("Choose a topic:");
    print("1. General Knowledge");
    print("2. Data Warehouse and Data Mining");
    print("3. Exit");
    Toption = int.parse(stdin.readLineSync()!);
    switch (Toption) {
      case 1:
        qm.GK();
        break;
      case 2:
        qm.DWM();
        break;
      case 3:
        exit(Toption);

      default:
        print("Invalid option number!");
        break;
    }
  }
}
