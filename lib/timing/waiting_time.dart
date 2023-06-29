class BotClock {

  Future Clock(int seconds) {
    return Future.delayed(Duration(seconds: seconds));
  }
}