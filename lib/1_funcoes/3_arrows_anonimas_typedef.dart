void main() {
  // Arrow Function
  print('A soma de 10 + 10 = ${somaInteiros(10, 10)}');

  // Função anônima
  () {
    print('Função anônima');
  }();

  var nome = '';
  var idade = 26;
  var funcaoQualquer = () {
    print('Função anônima com variáveis');
  };

  print(funcaoQualquer);

  print('Iniciando chamada');
  chamarUmaFuncaoDeUmParametro((nome) {
    nome.isEmpty ? print('Nome vazio') : print('Nome: $nome');
  });
  print('Finalizando chamada');
}

int somaInteiros(int number1, int number2) => (number1 + number2);
void somaInteirosVoid(int number1, int number2) => (number1 + number2);

void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeNome) {
  var calc = 1 + 1;
  var nomeCompleto = 'Barba Tech';
  print('Finalizando a função: $calc');
  funcaoQueRecebeNome(nomeCompleto);
}

// void chamarUmaFuncaoDeUmParametro2(FuncaoQueRecebeNome funcaoQueRecebeNome) {
//   var calc = 1 + 1;
//   var nomeCompleto = 'Barba Tech';
//   print('Finalizando a função: $calc');
//   funcaoQueRecebeNome(nomeCompleto);
// }

// tydedef FuncaoQueRecebeNome = void Function(String nome);
