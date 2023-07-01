
class GoodManners {

  String question;
  bool isThisGoodManners = false;
  String joaozinhoBot = 'JoãozinhoBOT: \n';

  GoodManners(this.question);

  bool isThisManners() {

    if(question.contains('oi') || 
    question.contains('Olá') || 
    question.contains('olá') || 
    question.contains('ola') || 
    question.contains('ola') || 
    question.contains('Oi') || 
    question.contains('e ai') || 
    question.contains('eai') ||
    question.contains('E ai') ||
    question.contains('Eai') ||
    question.contains('Salve') ||
    question.contains('salve') ||
    question.contains('Boa') ||
    question.contains('boa') ||
    question.contains('Bom') ||
    question.contains('bom') ||
    question.contains('dia') ||
    question.contains('Dia') ||
    question.contains('noite') ||
    question.contains('Noite') ||
    question.contains('tarde') ||
    question.contains('Tarde') ||
    question.contains('obrigado') ||
    question.contains('Obrigado') ||
    question.contains('obrigada') ||
    question.contains('Obrigada') ||
    question.contains('valeu') ||
    question.contains('Valeu') ||
    question.contains('de nada') ||
    question.contains('De nada') 
    ) {
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodManners() {
    if(
      question.contains('Bom dia') || 
      question.contains('bom dia')) {
      print(joaozinhoBot + 'Bom dia, flor do dia');
    }
    else if(question.contains('Boa tarde') || 
    question.contains('boa tarde')) {
      print(joaozinhoBot + 'Bom tarde!');
    } 
    else if(question.contains('Boa noite') || 
    question.contains('boa noite')) {
      print(joaozinhoBot + 'Bom noite! Logo logo a mimir hahahhah');
    } 
    else if(question.contains('oi') || 
    question.contains('Oi')) {
      print(joaozinhoBot + 'Oi, muito prazer!');
    } 
    else if(question.contains('olá') || 
    question.contains('Olá') || 
    question.contains('ola') || 
    question.contains('Ola')) {
      print(joaozinhoBot + 'Olá, muito prazer!');
    }
    else if(question.contains('obrigado') || 
    question.contains('Obrigado') || 
    question.contains('obrigada') || 
    question.contains('Obrigada') ||
    question.contains('valeu') ||
    question.contains('Valeu')) {
      print(joaozinhoBot + 'Não há de quê :D Tamo junto!');
    }
  }
}