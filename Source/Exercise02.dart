import 'dart:io';

void main(){

  stdout.write('Type the number of electors: ');
  int electors = int.tryParse(stdin.readLineSync());

  int electorsAlreadyVoted = electors;

  stdout.write('Type the number of white votes: ');
  int whiteVotes = int.tryParse(stdin.readLineSync());

  if(whiteVotes > electorsAlreadyVoted){
    print('Invalid number.');
    return;
  }

  electorsAlreadyVoted = electors - whiteVotes;

  stdout.write('Type the number of protest votes: ');
  int protestVotes = int.tryParse(stdin.readLineSync());

  if(protestVotes > electorsAlreadyVoted){
    print('Invalid number.');
    return;
  }

  electorsAlreadyVoted = electors - protestVotes;

  stdout.write('Type the number of valid votes: ');
  int validVotes = int.tryParse(stdin.readLineSync());

  if(validVotes > electorsAlreadyVoted){
    print('Invalid number.');
    return;
  }

  stdout.write('------------------------------------------------------------------------\n');
  stdout.write('The number of voters is: ' + electors.toString() + '\n');
  stdout.write('The percentual of white votes is: ' + ((whiteVotes/electors) * 100).toString() + '%\n');
  stdout.write('The percentual of protest votes is: ' + ((protestVotes/electors) * 100).toString() + '%\n');
  stdout.write('The percentual of valid votes is: ' + ((validVotes/electors) * 100).toString() + '%\n');
    
}




