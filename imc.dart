import 'dart:io';

main() {
  calcImc();
}

void calcImc() {
  print("====== Indice de Massa Corporal ======");
  print("Informe sua altura (metros):");
  String? altura = stdin.readLineSync();
  print("Informe seu peso (em kgs):");
  String? peso = stdin.readLineSync();

  double resultImc =
      (double.parse(peso!) / (double.parse(altura!) * double.parse(altura)));

  if (resultImc < 18.5) {
    print("Você está abaixo do peso");
  }
  if (resultImc >= 18.5 && resultImc <= 24.9) {
    print("Você está com o peso ideal");
  }
  if (resultImc >= 25 && resultImc < 29.9) {
    print("Você está acima do peso");
  }
  if (resultImc >= 30) {
    print("Você está em nível de obesidade");
  }
  print(resultImc.toStringAsPrecision(2));
}
