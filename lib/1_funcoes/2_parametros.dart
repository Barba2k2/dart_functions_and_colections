void main() {
  print('A soma de 10 + 10 = ${somaInteiros(10, 10)}');

  print('A soma de 10.5 + 10.5 = ${somaDoubles(number1: 10.5, number2: 10.5)}');

  print(
      'A soma de 10.1 + 10.9 = ${obrigatorios(number1: 10.1, number2: 10.9)}');

  print('A soma de 10 + 10 = ${somaDoublesDefault(number1: 10, number2: 10)}');

  print('A soma de 33 + 66 = ${somaIntOpcional(10, 10)}');

  parametrodNormaisComNomeados(10, nome: 'Barba', idade: 33);
  parametrodNormaisComNomeados2(10, 'Barba');
}

int somaInteiros(int number1, int number2) {
  return number1 + number2;
}

double somaDoubles({double? number1, double? number2}) {
  if (number1 != null && number2 != null) {
    return number1 + number2;
  }

  return 0.0;
}

double obrigatorios({required double? number1, required double number2}) {
  number1 ??= 0;

  return number1 + number2;
}

double somaDoublesDefault({double number1 = 0, double number2 = 0}) {
  return number1 + number2;
}

int somaIntOpcional([int number1 = 0, int number2 = 0]) {
  return number1 + number2;
}

void parametrodNormaisComNomeados(int number,
    {required String nome, required int idade}) {}
void parametrodNormaisComNomeados2(int number, [String? apelido]) {}
