void main() {
  final valorCalculado = somaInteiros(10, 10);
  print('O valor calculado é: $valorCalculado');
}

int somaInteiros(int number1, int number2) {
  print('Executando a soma dos inteiros($number1, $number2)');
  return number1 + number2;
}
