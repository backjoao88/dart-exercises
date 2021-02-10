class Cliente{
  String nome;
  String cpf;
  Cliente({this.nome, this.cpf});
}

class Produto{
  int codigo;
  String nome;
  double preco;
  double desconto;

  Produto({this.codigo, this.nome, this.preco, this.desconto = 0});

  double get precoComDesconto {
    return preco - ((desconto / 100) * preco);
  }
}

class Venda {
  Cliente cliente;
  List<VendaItem> itens;
  Venda({this.cliente, this.itens = const []});

  double get valorTotal { 
    return itens
      .map((item) => item.preco * item.quantidade)
      .reduce((t, a) => t + a);
  }
}

class VendaItem {
  Produto produto;
  int quantidade;
  double _preco;

  VendaItem({this.produto, this.quantidade = 1});

  double get preco {
    if(produto != null && _preco == null){
      this._preco = produto.precoComDesconto;
    }
    return this._preco;
  }

  set preco(double novoPreco){
    if (novoPreco > 0) this._preco = novoPreco;
  }
}
void main(){

  Cliente c1 = new Cliente();
  c1.nome = 'Joao';
  c1.cpf = '111.456.235-32';

  Produto p1 = new Produto();
  p1.codigo = 1;
  p1.nome = 'martelo';
  p1.preco = 23.75;
  p1.desconto = 0;

  Produto p2 = new Produto();
  p1.codigo = 1;
  p1.nome = 'colher';
  p1.preco = 223.75;
  p1.desconto = 0;

  Produto p3 = new Produto();
  p1.codigo = 1;
  p1.nome = 'carro';
  p1.preco = 233.75;
  p1.desconto = 0;

  VendaItem i1 = new VendaItem();
  i1.produto = p1;
  i1.quantidade = 6;
  i1._preco = 400.00;

  VendaItem i2 = new VendaItem();
  i2.produto = p2;
  i2.quantidade = 1;
  i2._preco = 233.75;

  VendaItem i3 = new VendaItem();
  i3.produto = p3;
  i3.quantidade = 2;
  i3._preco = 500.00;

  List lista = [];

  lista.add(i1);
  lista.add(i2);
  lista.add(i3);
  
  Venda v1 = new Venda();
  v1.cliente = c1;
  v1.itens = lista;

}


