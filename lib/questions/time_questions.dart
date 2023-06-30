import 'dart:io';

class TimeQuestions {
  String hour = 'Que horas sao?';
  String day = 'Que dia e hoje?';
  String month = 'Em que mes estamos?';
  String year = 'Em que ano estamos?';
  String question;
  DateTime date = DateTime.now();
  String joaozinhoBot = 'JoãozinhoBOT:\n';
  bool isThisAtimeQuestion = false;

  String monthString () {

    String dateString = '';
    if (date.month == 1) {
      String dateString = 'Janeiro';
      return dateString;
    } 
    
    else if (date.month == 2) {
      String dateString = 'Fevereiro';
      return dateString;
    } 
    
    else if (date.month == 3) {
      String dateString = 'Março';
      return dateString;
    } 
    
    else if (date.month == 4) {
      String dateString = 'Abril';
      return dateString;
    } 
    
    else if (date.month == 5) {
      String dateString = 'Maio';
      return dateString;
    } 
    
    else if (date.month == 6) {
      String dateString = 'Junho';
      return dateString;
    } 
    
    else if (date.month == 7) {
      String dateString = 'Julho';
      return dateString;
    } 
    
    else if (date.month == 8) {
      String dateString = 'Agosto';
      return dateString;
    } 
    
    else if (date.month == 9) {
      String dateString = 'Setembro';
      return dateString;
    } 
    
    else if (date.month == 10) {
      String dateString = 'Outubro';
      return dateString;
    } 
    
    else if (date.month == 11) {
      String dateString = 'Novembro';
      return dateString;
    } 
    
    else if (date.month == 12) {
      String dateString = 'Dezembro';
      return dateString;
    }

    return dateString;

  }

  TimeQuestions(this.question);

  bool isThisTime() {
    if (
      question.contains('horas') ||
      question.contains('Horas') ||
      question.contains('hora') ||
      question.contains('dia') ||
      question.contains('Dia') ||
      question.contains('mes') ||
      question.contains('mês') ||
      question.contains('Mes') ||
      question.contains('Mês') ||
      question.contains('ano') ||
      question.contains('Ano') ) {

        isThisAtimeQuestion = true;

      }

      return isThisAtimeQuestion;
  }

  TimeQuestion() {

    if (question == hour) {
      String _botAnswer = joaozinhoBot + 'Opa! Agora são ${date.hour} horas e ${date.minute} minutos.';
      print(_botAnswer);

    } else if (question == day) {
      String _botAnswer = joaozinhoBot + 'Opa! Hoje é dia ${date.day}.';
      print(_botAnswer);

    } else if(question == month) {
      String _botAnswer = joaozinhoBot + 'Opa! O mês que a gente está é: ${monthString()}';
      print(_botAnswer);

    } else if (question == year) {
      String _botAnswer = joaozinhoBot + 'Opa! O ano que a gente está é: ${date.year}';
      print(_botAnswer);

    } else {
      unsure();
    }
  }

  unsure() {
    if (
      question.contains('horas') || 
      question.contains('Horas') || 
      question.contains('hora') ||
      question.contains('Hora')) {

      String _botQuestion = 'Não entendi bem, você está querendo saber que horas são?';
      print(_botQuestion);

      String answer = stdin.readLineSync().toString();

      if (
        answer.contains('sim') || 
        answer.contains('Sim') || 
        answer.contains('si') || 
        answer.contains('Si') || 
        answer.contains('s') || 
        answer.contains('S') || 
        answer.contains('ss')) {
          String _botAnswer = 'Aaaaah sim. Nesse exato momento são ${date.hour} horas e ${date.minute} minutos.';
          print(_botAnswer);
      } else {
        String _botAnswer = 'Ah... Entendi errado então, me desculpe.';
        print(_botAnswer);
      }
    } else if (
      question.contains('dia') ||
      question.contains('Dia')) {
        String _botQuestion = 'Não entendi bem, você está querendo saber que dia é hoje?';
        print(_botQuestion);

        String answer = stdin.readLineSync().toString();

        if (
        answer.contains('sim') || 
        answer.contains('Sim') || 
        answer.contains('si') || 
        answer.contains('Si') || 
        answer.contains('s') || 
        answer.contains('S') || 
        answer.contains('ss')) {
          String _botAnswer = 'Aaaaah sim. Estamos no dia ${date.day} do mês de ${monthString()}';
          print(_botAnswer);
      } else {
        String _botAnswer = 'Ah... Entendi errado então, me desculpe.';
        print(_botAnswer);
      }
    } else if (
      question.contains('mes') ||
      question.contains('Mes') ||
      question.contains('Mês') || 
      question.contains('mês')) {
        String _botQuestion = 'Não entendi bem, você está querendo saber em que mês estamos?';
        print(_botQuestion);

        String answer = stdin.readLineSync().toString();

        if (
        answer.contains('sim') || 
        answer.contains('Sim') || 
        answer.contains('si') || 
        answer.contains('Si') || 
        answer.contains('s') || 
        answer.contains('S') || 
        answer.contains('ss')) {
          String _botAnswer = 'Aaaaah sim. Estamos no mês de ${monthString()} de ${date.year}.';
          print(_botAnswer);
      } else {
        String _botAnswer = 'Ah... Entendi errado então, me desculpe.';
        print(_botAnswer);
      }
    } else if (
      question.contains('ano') ||
      question.contains('Ano')) {
        String _botQuestion = 'Não entendi bem, você está querendo saber em que ano estamos?';
        print(_botQuestion);

        String answer = stdin.readLineSync().toString();

        if (
        answer.contains('sim') || 
        answer.contains('Sim') || 
        answer.contains('si') || 
        answer.contains('Si') || 
        answer.contains('s') || 
        answer.contains('S') || 
        answer.contains('ss')) {
          String _botAnswer = 'Aaaaah sim. Estamos no ano de ${date.year}.';
          print(_botAnswer);
      } else {
        String _botAnswer = 'Ah... Entendi errado então, me desculpe.';
        print(_botAnswer);
      }
    } 
  }
}
