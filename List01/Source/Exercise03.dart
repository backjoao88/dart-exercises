import 'dart:io';

void main(){

  stdout.write('Type the employee salary: ');
  double salary = double.tryParse(stdin.readLineSync());

  stdout.write('Type the percentual of the salary readjustment: ');
  double salaryReadjustment = double.tryParse(stdin.readLineSync());

  double newSalary = salary + ((salaryReadjustment/100) * salary);

  stdout.write('------------------------------------------------------------------------\n');
  stdout.write('Employee Salary: \$ ' + salary.toString() + '\n');
  stdout.write('New Salary: \$ ' + newSalary.toString() + '\n');

}




