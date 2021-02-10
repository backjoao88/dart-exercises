import 'dart:io';


String comissaoVenda(nome, salario, vendasMesPassado, percentualComissao){
  double perc = percentualComissao / 100;
  double comissao = vendasMesPassado * perc;

  return "O funcionário " + 
  nome.toString() + " deverá receber este mês o valor de " 
  + (salario + comissao ).toString()+ " sendo " + salario.toString() + " o salário e " + comissao.toString() + " de comissão.";
}

void main(){

	stdout.write('Nome do funcionário: ');
  String nome = stdin.readLineSync();

  print(comissaoVenda(nome, 1500, 3000, 5));
}
