import 'dart:async';

void main() {
  final controller = StreamController();
  final stream = controller.stream;
  
  // 파라메터 함수를 listen하고 있을때 값이 들어가면 함수 실행 
  final streamListener1 = stream.listen((val){
    print('Listener1 : $val');
  });
  
  // add 를 통해 리슨하는 함수에 전달
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}
