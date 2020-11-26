import 'dart:io';

void main(){

  stdout.write('Type the grade 01: ');
  double grade1 = double.tryParse(stdin.readLineSync());

  stdout.write('Type the grade 02: ');
  double grade2 = double.tryParse(stdin.readLineSync());

  stdout.write('Type the grade 03: ');
  double grade3 = double.tryParse(stdin.readLineSync());

  double finalGrade = ((grade1 * 2) + (grade2 * 3) + (grade3 * 5)) / 10;

  stdout.write('------------------------------------------------------------------------\n');
  stdout.write('Final Mark: ' + finalGrade.toString() + '\n');

}




