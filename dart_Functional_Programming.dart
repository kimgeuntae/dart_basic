void main() {
  /*
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
  */

  List<Map<String, String>> people = [
    {'name': '로제', 'group': '블랙핑크'},
    {'name': '지수', 'group': '블랙핑크'},
    {'name': 'RM', 'group': 'BTS'},
    {'name': '뷔', 'group': 'BTS'}
  ];

  print(people);

  /* Functional Programming */

  // Person 클래스로 Instance 화
  final parsedPeople =
      people.map((x) => Person(name: x['name']!, group: x['group']!)).toList();

  // Instance of Person 내부를 보기위해 Person override 'toString'
  print(parsedPeople);

  // 인스턴스라서 클래스 변수, 함수가 표시가됨
  for (Person person in parsedPeople) {
    print(person.name);
    print(person.group);
  }

  // where 필터로 bts 만 추출
  final bts = parsedPeople.where((x) => x.group == 'BTS');

  print(bts);

  // 위의 처리를 체이닝화
  // 함수형 프로그래밍은 간결화를 위해함, 많은 체이닝은 오히려 읽기불편함
  final result = people
      .map((x) => Person(name: x['name']!, group: x['group']!))
      .where((x) => x.group == 'BTS');

  print(result);
}

class Person {
  final String name;
  final String group;

  Person({required this.name, required this.group});

  @override
  String toString() {
    return 'Person(name:$name, group:$group)';
  }
}
