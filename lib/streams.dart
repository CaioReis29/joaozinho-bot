import 'dart:async';

void main() async{
  
  Stream MyStream(int interval, [int? nextCount]) async*{

    int i = 1;

    while(i != nextCount) {
      print('Couting: $i');

      await Future.delayed(Duration(seconds: interval));
      yield i ++;
    }

    print('The stream is finished');
  }
    var joaozinhoStream = MyStream(1).asBroadcastStream();

  StreamSubscription mySubscriber = joaozinhoStream
  .listen((event) {
    if(event.isEven) {
      print('This number is Even!');
    }
  }, onError: (e) => print('ERROR: $e'), 
  onDone: () => print('Finally the subscriber is gone.'),);

  joaozinhoStream.map((event) => 'Subscriber 2 is watching: $event')
  .listen(print);

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print('Stream paused');

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print('Stream is resumed');

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print('Stream is canceled');

}