void main() {
  
  Future<int> myFutureFunc () async{

    print('Function in the future');
    await Future.delayed(Duration(seconds: 5));

    throw Exception();

    return 12;
  }

  myFutureFunc()
  .then((value) => print('My funtion value is: $value'))
  .onError((error, stackTrace) => print('An error occurred: $error'))
  .whenComplete(() => print('the future is over.'));


  Future<int> myFutureErrorFunc(int a, int b) async{

    try{

      if(a > b) {
        throw Exception();
      }

      print('I have a functional function');

      await Future.delayed(Duration(seconds: 5));
      return 43;

    }catch(e){
      print('An error occurred: $e');
      return 43;
    }finally{
      print('The future is finally over');
    }
  }

  myFutureErrorFunc(1, 2)
  .then((value) => print('This value is: $value'));


  print('Done with main');
}