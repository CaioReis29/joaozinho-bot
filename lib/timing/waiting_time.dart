class BotClock {

  Future Clock(int seconds) {
    return Future.delayed(Duration(seconds: seconds));
  }

    Stream joaozinhoStream(int interval, [int? nextCount]) async*{

    int i = 1;

    while(i != nextCount) {

      await Future.delayed(Duration(seconds: interval));
      yield i ++;
    }

    print('A stream foi finalizada.');
  }
}