import 'dart:io';

import 'package:async_dart/perguntas/time_questions.dart';
import 'package:async_dart/timing/waiting_time.dart';

void main() async {
  String joaozinhoBot = 'JoãozinhoBOT:\n';

  var activity = true;

  String userAnswer = '';

  print('__ Um momento, pois Joãozinho está se ajeitando... __');
  await BotClock().Clock(3);

  print('JoãozinhoBOT:\n E aí, bro \n Qual a dúvida que você quer tirar?');

  do {
    userAnswer = stdin.readLineSync().toString();

    print('Estou processando sua pergunta, um momento...');
    await BotClock().Clock(2);

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
        await BotClock().Clock(3);
      } else {
        await BotClock().Clock(5);
        print(joaozinhoBot + 'Foi mal, mais não fui desenvolvido para responder essa pergunta...');
        print(joaozinhoBot + 'Você pode me fazer uma outra pergunta ou dar Tchau para mim :D');
      }
  } while (activity);
  print('_ Joãozinho desligando... _');
}
