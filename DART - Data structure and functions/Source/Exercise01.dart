import 'dart:io';

void main(){

	stdout.write('Number of clients: ');
	int clients = int.tryParse(stdin.readLineSync());

  int i = 0;
  int counterNegative = 0;
  double totalBalance = 0;

  while(i < clients || i == 10000){
    i++;
    stdout.write(i.toString() + ' - Type the account number: ');
    int account = int.tryParse(stdin.readLineSync());
    stdout.write(i.toString() + ' - Type the current balance: ');
    double balance = double.tryParse(stdin.readLineSync());
    stdout.write(i.toString() + ' - Type the client name: ');
    String name = stdin.readLineSync();


    totalBalance += balance;
    if(balance < 0){
      counterNegative++;
      stdout.write(i.toString() + ' - Balance: NEGATIVE.\n');
    }else{
      stdout.write(i.toString() + ' - Balance: POSITIVE.\n');
    }
    
  }

  stdout.write(i.toString() + ' - NUmber of clients with negative balance: ' + counterNegative.toString() + '\n');

  stdout.write(i.toString() + ' - Number of clients: ' + i.toString() + '\n');

  stdout.write(i.toString() + ' - Agency balance: ' + totalBalance.toString() + '\n');

}
