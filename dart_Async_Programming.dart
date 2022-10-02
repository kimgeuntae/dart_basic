void main() async {
  // Future - 미래
  // 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  await addNumbers(1, 1);
  await addNumbers(2, 2);
}

// await 이 없는 경우, delayed 이후 코드 실행
/*
void addNumbers1(int num1, int num2) {
  print('계산 시작1 : $num1 + $num2');

  // 서버 시뮬레이션
  Future.delayed(Duration(seconds: 2), () {
    print('계산 완료1 : $num1 + $num2 = ${num1 + num2}');
  });

  print('함수 완료1 : $num1 + $num2');
}
*/
// await 이 있는 경우, async 함수 내의 delayed 이후 코드를 기다림
Future<void> addNumbers(int num1, int num2) async {
  print('계산 시작 : $num1 + $num2');

  // 서버 시뮬레이션
  await Future.delayed(Duration(seconds: 2), () {
    print('계산 완료 : $num1 + $num2 = ${num1 + num2}');
  });

  print('함수 완료 : $num1 + $num2');
}
