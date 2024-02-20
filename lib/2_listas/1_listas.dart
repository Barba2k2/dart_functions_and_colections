void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(printAcademia);

  // Expand
  print('expand');
  var lista = [
    // Array Bidemensional
    [1, 2],
    [3, 4],
  ];

  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  // Any
  print('.any');
  final listaBusca = ['Barba', 'Joao', 'Maria'];

  if (listaBusca.any((nome) => nome == 'Jose')) {
    print('Tem Jose na lista');
  } else {
    print('Nao tem Jose na lista');
  }

  // Every
  print('.every');
  final listaBusca2 = ['Barba', 'Joao', 'Maria'];

  if (listaBusca2.every((nome) => nome.contains('J'))) {
    print('Todos os nomes tem a letra J');
  } else {
    print('Nem todos os nomes tem a letra J');
  }

  // Sort
  print('.sort');
  var listaSort = [99, 22, 10, 765, 1, 2, 3, 100, 300, 800, 600];

  listaSort.sort();
  print(listaSort);

  var listaNomesOrdenacao = ['Joao', 'Jose', 'Barba'];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);

  var listaPacientes = [
    'Rodrigo Rahman|37',
    'Guilherme Rahman|30',
    'Joao Rahman|18',
    'Livia|5',
    'Joaquim|5',
    'Natalia Rahman|50',
  ];

  var novaListaPacientes = [...listaPacientes];

  novaListaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(listaPacientes);
  print(novaListaPacientes);

  // Compare To
  print('.sort com CompareTo');

  var listaPacientes2 = [
    'Rodrigo Rahman|37',
    'Guilherme Rahman|30',
    'Joao Rahman|18',
    'Livia|5',
    'Joaquim|5',
    'Natalia Rahman|50',
  ];

  // Pacientes por funcao
  print('Pacientes por funcao');

  var listaPacientes3 = [
    'Rodrigo Rahman|37',
    'Guilherme Rahman|30',
    'Joao Rahman|18',
    'Livia|5',
    'Joaquim|5',
    'Natalia Rahman|50',
  ];
  print('Antes');
  funcaoQualquer(listaPacientes3);
  print('Depois');
  print(listaPacientes3);
}

void printAcademia(Object value) {
  print(value);
}

void funcaoQualquer(List<String> pacientes) {
  pacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(pacientes);
}
