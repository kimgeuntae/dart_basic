void main() {
  BoyGroup bts = BoyGroup('BTS');
  GirlGroup redVelvet = GirlGroup('레드벨벳');

  bts.sayName();
  redVelvet.sayName();
}

// interface
class IdolInterface {
  String name;

  //constructor
  IdolInterface(this.name);

  void sayName() {}
}

class BoyGroup implements IdolInterface {
  String name;

  //constructor
  BoyGroup(this.name);

  void sayName() {
    print('제 이름은 $name 입니다.');
  }
}

class GirlGroup implements IdolInterface {
  String name;

  //constructor
  GirlGroup(this.name);

  void sayName() {
    print('제 이름은 $name 입니다.');
  }
}
