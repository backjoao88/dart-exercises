import 'dart:io';

void main(){

  stdout.write('Type the grade 01: ');
  double grade1 = double.tryParse(stdin.readLineSync());

  stdout.write('Type the weight 01: ');
  double weight1 = double.tryParse(stdin.readLineSync());

  stdout.write('Type the grade 02: ');
  double grade2 = double.tryParse(stdin.readLineSync());

  stdout.write('Type the weight 02: ');
  double weight2 = double.tryParse(stdin.readLineSync());

  stdout.write('Type the grade 03: ');
  double grade3 = double.tryParse(stdin.readLineSync());

  stdout.write('Type the weight 03: ');
  double weight3 = double.tryParse(stdin.readLineSync());

  double finalGrade = ((grade1 * weight1) + (grade2 * weight2) + (grade3 * weight3)) / 10;

  stdout.write('------------------------------------------------------------------------\n');
  stdout.write('Final Mark: ' + finalGrade.toString() + '\n');

}




