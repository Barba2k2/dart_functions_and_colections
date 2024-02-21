void main() {
  var numerosLista = [];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(1);
  numerosLista.add(2);
  print(numerosLista);

  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(3);
  numerosSet.add(null);
  numerosSet.add(1);
  numerosSet.add(2);
  print(numerosSet);

  print('\n.toSet()');
  print(numerosLista.toSet());

  numerosSet.forEach(print);

  var numeros1 = {1, 2, 3, 4, 5, 6};
  var numeros2 = {1, 3, 4, 7};

  print('\n.difference()');
  print(numeros1.difference(numeros2));
  print(numeros2.difference(numeros1));

  print('\n.union()');
  print(numeros2.union(numeros1));

  print('\n.intersection()');
  print(numeros2.intersection(numeros1));

  var nomes1 = {'Ana', 'Bia', 'Carlos'};
  var nomes2 = {'Ana', 'Joaquim', 'Guilherme', 'Daniel'};
  print(nomes1.intersection(nomes2));

  print('\n.lookup()');
  print(numeros1.lookup(10));
}
