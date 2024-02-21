void main() {
  var lista = ['Barba'];
  print(lista.hashCode);
  print(lista);
  funcao(lista);
  print(lista);

  print('\n=================================================\n');

  var nome = 'Barba Tech';
  print(nome);
  print(nome.hashCode);
  funcao2(nome);
  print(nome);
  print(nome.hashCode);

  print('\n=================================================\n');

  var list = ['Vitor'];
  print(list);
  add(list);
  print(list);
}

void funcao2(String nome) {
  nome += ' Academia do Flutter';
  print(nome);
  print(nome.hashCode);
}

void funcao(List<String> nomes) {
  print(nomes.hashCode);
  if (nomes.isNotEmpty) {
    nomes.clear();
  }
}

List<String> add(List<String> names) {
  var newNames = [...names];
  newNames.add('Barba Tech');
  print(newNames);
  return newNames;
}
