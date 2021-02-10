import 'dart:io';

void main(){
	stdout.write('Type a number: ');
	int value = int.tryParse(stdin.readLineSync());
	int predecessor = value - 1;
	print('The predecessor of ' + value.toString() + ' is ' + predecessor.toString());
}
