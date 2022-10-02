void main() {
  Map<String, String> herryPotter = {
    'Herry Potter': '해리 포터',
    'Ron Weasly': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저'
  };

  // map을 map으로 바꾸는 형태
  final result = herryPotter.map((key, value) =>
      MapEntry('Herry Potter Character $key', '해리포터 케릭터 $value'));

  print(herryPotter);
  print(result);

  // key, value 각각의 값만 바꾸는 형태
  final keys = herryPotter.keys.map((x) => 'HPC $x').toList();
  final values = herryPotter.values.map((x) => '해리포터 $x').toList();

  print(keys);
  print(values);
}
