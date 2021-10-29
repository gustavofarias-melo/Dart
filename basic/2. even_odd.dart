import 'dart:io';

void main() {
  calc();
}

calc() {
  String? numberStr;

  while (true) {
    print("Write the number or write 'exit' to exit: ");
    numberStr = stdin.readLineSync();

    if (numberStr == "sair" || numberStr == "exit") {
      return print("Exited");
    } else if (int.parse(numberStr!) % 2 == 0) {
      print("Even"); // Par
    } else {
      print("Odd"); // Impar
    }
  }
}
