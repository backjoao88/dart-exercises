import 'dart:io';

void main(){

	stdout.write('Total of people: ');
	int people = int.tryParse(stdin.readLineSync());

  int i = 0;
  int moreThan21 = 0;
  int moreThan50 = 0;

  while(i < people){
    i++;
    stdout.write(i.toString() + ' - Age: ');
    int age = int.tryParse(stdin.readLineSync());

    if(age < 0 || age > 140){
      return;
    }

    if(age > 21){
      moreThan21++;
    }else{
      if(age > 50){
        moreThan50++;
      }
    }

  }

  stdout.write(i.toString() + ' - 21: ' + moreThan21.toString() + '\n');

  stdout.write(i.toString() + ' - 50: ' + moreThan50.toString() + '\n');

}
