import 'dart:async';

void main() {
  final controller = StreamController();
  // final stream = controller.stream; //단일
  final stream = controller.stream.asBroadcastStream(); // 브로드캐스트 스트림화
  
  // 파라메터 함수를 listen하고 있을때 값이 들어가면 함수 실행 
  final streamListener1 = stream.where((val) => val % 2 == 0).listen((val){
    print('Listener1 : $val');
  });
  
  final streamListener2 = stream.where((val) => val % 2 == 1).listen((val){
    print('Listener2 : $val');
  });
  // 리스너 데이터 변환 예제 where 사용
  
  // add 를 통해 리슨하는 함수에 전달
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}
