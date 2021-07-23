import 'dart:io';
import 'dart:math';

enum Move {rock, paper, scissors}

void main(List<String> arguments) {
  final rng = Random();
  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s) ');
    final input = stdin.readLineSync(); //user input
    print(input);
    if (input == 'r' || input == 'p' || input == 's') {
      //user moves
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p'){
        playerMove = Move.paper;
      } else {
        playerMove == Move.scissors;
      }

      final random = rng.nextInt(3); //defining range of random
      final aiMove = Move.values[random];
      print('You Played: $playerMove');
      print('AI Played: $aiMove');

      // win/lose according to moves
      if (playerMove == aiMove) {
        print('It\'s a draw!!');
      } else if (playerMove == Move.rock && aiMove == Move.scissors ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissors && aiMove == Move.paper){
        print('You Win!!');
      } else {
        print('You Lose!!');
      }

    } else if (input == 'q'){
      print('You Quit!');
      break;
    } else {
      print('Invalid Input');
    }
  }

  // Show true
  // Show prompt
  // Read user input is a valid move ("r","p","s")
  // If input is a valid move at random
  //     choose the AI move at random
  //     compare the player move with the AI move
  //     Show the result
  //   else if input is "q"
  //     Quit the program
  //   else
  //     invalid input
}
