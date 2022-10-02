void main() {
  List<int> numbers = [1, 3, 5, 7, 9];

  // 첫 prev는 리스트 첫번째, 그 후로는 return 값.
  // next 는 첫번째 이후 순서대로 인자를 불러옴
  // final result = numbers.reduce((prev, next) => prev + next);
  final result = numbers.reduce((prev, next) {
    print('-------------');
    print('previous : $prev');
    print('next : $next');
    print('total : ${prev + next}');

    return prev + next;
  });

  print('------ total ------');
  print(result);

  List<String> words = ['안녕하세요. ', '저는 ', '코드팩토리 입니다.'];

  final sentence = words.reduce((prev, next) => prev + next);

  print(sentence);

  // reduce 에러
  // 실행하는 멤버의 타입과 return 타입이 같아야함. length는 int 타입이라서 에러.
  // words.reduce((prev, next) => prev.length + next.length);

  print('-------------------------- fold --------------------------');

  List<int> numbers2 = [1, 3, 5, 7, 9];

  // fold는 첫번째 인자를 지정함. 그리고 return 타입을 제네릭으로 선언.
  final sum = numbers.fold<int>(0, (prev, next) => prev + next);

  print(sum);

  List<String> words2 = ['안녕하세요. ', '저는 ', '코드팩토리 입니다.'];

  final sentence2 = words2.fold<int>(0, (prev, next) => prev + next.length);

  print(sentence2);
}
