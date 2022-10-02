void main() {
  BoyGroup bts = BoyGroup('BTS');
  GirlGroup redVelvet = GirlGroup('레드벨벳');
  // IdolInterface test = IdolInterface('블랙핑크');

  bts.sayName();
  redVelvet.sayName();
  
  print(bts is IdolInterface);
  print(bts is BoyGroup);
  print(bts is GirlGroup);
  
  print(redVelvet is IdolInterface);
  print(redVelvet is BoyGroup);
  print(redVelvet is GirlGroup);
}

// interface
abstract class IdolInterface {
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
