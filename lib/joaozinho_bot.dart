

import 'dart:io';

import 'package:async_dart/perguntas/time_questions.dart';

void main() async {
  String joaozinhoBot = 'JoãozinhoBOT:\n';

  var activity = true;

  String userAnswer = '';

  print('__ Um momento, pois Joãozinho está se ajeitando... __');

  print('JoãozinhoBOT:\n E aí, bro \n Qual a dúvida que você quer tirar?');

  do {
    userAnswer = stdin.readLineSync().toString();

    print('Estou processando sua pergunta, um momento...');

    if (
      userAnswer.contains('Xau') ||
      userAnswer.contains('xau') || 
      userAnswer.contains('Adeus') ||
      userAnswer.contains('adeus') ||
      userAnswer.contains('tchau') ||
      userAnswer.contains('Tchau') ||
      userAnswer.contains('bye') ||
      userAnswer.contains('Bye') || 
      userAnswer.contains('flw')) {

        activity = false;

        print(joaozinhoBot + 'Certo.. Então até a próxima, flw!!');
      } else if(TimeQuestions(userAnswer).isThisTime()) {
        TimeQuestions(userAnswer).TimeQuestion();
      } else {
        print(joaozinhoBot + 'Foi mal, mais não fui desenvolvido para responder essa pergunta...');
        print(joaozinhoBot + 'Você pode me fazer uma outra pergunta ou dar Tchau para mim :D');
      }
  } while (activity);
  print('_ Joãozinho desligando... _');
}
