import 'dart:io';

main() {
  List<String>? produtos = [];

  print("\n==== ADICIONE UM PRODUTO OU OPCAO ====");
  print("Digite ex: 'goiaba, uva, etc.' ou 'remover', 'imprimir'");
  while (true) {
    String item = stdin.readLineSync().toString();

    if (item == "sair") {
      print("Produtos adicionados:");
      imprimirProdutos(produtos);
      print(" ==== ENCERROU A APLICAÇÃO ====");
      break;
    } else if (item == "imprimir") {
      imprimirProdutos(produtos);
    } else if (item == "remover") {
      removerProdutos(produtos);
    } else {
      produtos.add(item);
      print("Produto adicionado!");
    }
  }
}

imprimirProdutos(produtos) {
  for (var i = 0; i < produtos.length; i++) {
    print("Item $i: ${produtos[i].toLowerCase()}");
  }
}

removerProdutos(produtos) {
  imprimirProdutos(produtos);
  print("Qual deseja remover? Informe o número do Item");
  int produto = int.parse(stdin.readLineSync()!);
  var produtoRemovido = produtos.removeAt(produto);
  print("Produto '${produtoRemovido.toUpperCase()}' removido com sucesso! \n");

  print(produtos);
}
