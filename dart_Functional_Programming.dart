void main() {
  List<String> blackPink = ['로제', '지수', '리사', '제니'];

  // iterable 활용
  final newBlackPink = blackPink.map((x) {
    return '블랙핑크 $x';
  });

  print(blackPink);
  print(newBlackPink);

  final newBlackPink2 = blackPink.map((x) => '블랙핑크 $x');
  print(newBlackPink2);

  // object compare
  print(blackPink == blackPink);
  print(newBlackPink == blackPink);
  print(newBlackPink == newBlackPink2);

  // iterable 실사용
  String number = '13579';

  final parsed = number.split('').map((x) => '$x.jpg').toList();

  print(parsed);
}
