import 'dart:async';

void main() {
  calculate(2).listen((val) {
    print('calculate(2) : $val');
  });

  // 동시 사용 테스트
  calculate(4).listen((val) {
    print('calculate(4) : $val');
  });
}

/*
Future<int> calculate(int number) async {
  for(int i=0; i<5; i++){
    return i * number;
  }
}
*/

// 함수를 listen 하는곳에 yield를 뿌려줌
Stream<int> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    yield i * number;

    // 일반 async 함수를 사용
    await Future.delayed(Duration(seconds: 1)); // cpu가 막힌게 아닌, async 를 하고있음
  }
}
