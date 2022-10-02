void main() {
  List<int> even = [2, 4, 6, 8];

  List<int> odd = [1, 3, 6, 8];

  // cascading operator
  // 사용법 앞에 ... 을 작성
  // 리스트를 세로운 리스트로 만들어줌

  print([...even, ...odd]); // 두개가 합쳐진 리스트가 됨
  print(even);
  print([...even]);
  print(even == [...even]); // false
}
