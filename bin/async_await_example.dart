import 'package:async_await_example/async_await_example.dart'
    as async_await_example;

void main(List<String> arguments) async {
  var p = Person();

  // Syncronous

  // print('job1');
  // print('job2');
  // p.getData();
  // print('job3');

  // Asyncronous

  print('job1');
  print('job2');
 
  // ignore: unawaited_futures
  p.getDataAsync().then((_) {
    print('job 3 : ' + p.name);
  });

  print('job4');
}

class Person {
  late String name = 'default name';

  void getData() {
    name = 'Yusril';
    print('Compleated!');
  }

  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 3));
    name = 'Yusril';
    print('Compleated!');
  }
}
