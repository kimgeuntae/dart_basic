import 'dart:async';

void main() {
  playAllStream().listen((val) {
    print(val);
  });
}

Stream<int> playAllStream() async* {
  yield* calculate(1); // yield* : 별을 붙여서 await 와 비슷한 기능을 사용
  // calculate(1) 이 완료될때까지 기다림
  yield* calculate(1000);
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
