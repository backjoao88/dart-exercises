

import 'dart:io';

void main(){

  stdout.write('Type the weight 01: ');
  double degreeFarenheit = double.tryParse(stdin.readLineSync());

  double celsius = (5 * (degreeFarenheit-32) / 9);

  stdout.write('------------------------------------------------------------------------\n');
  stdout.write('Fahrenheit: ' + degreeFarenheit.toString() + '\n');
  stdout.write('Celsius: ' + celsius.toString() + '\n');

}




