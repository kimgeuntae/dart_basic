void main() {
  List<String> blackPink = ['로제', '지수', '리사', '제니', '지수'];

  print(blackPink);
  print(blackPink.asMap());
  print(blackPink.toSet());

  Map blackPinkMap = blackPink.asMap();

  print(blackPinkMap.keys.toList());
  print(blackPinkMap.values.toList());

  Set blackPinkSet = Set.from(blackPink);

  print(blackPinkSet.toList());
}
