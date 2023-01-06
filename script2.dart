import 'dart:_http';

void main() {
  final jon = Person('Jon', 'Snow');
  final jane = Student('Jane', 'Snow');
  final historyGrade = Grade.B;

  final jessie = SchoolBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('Marty', 'Mcfly');
  final students = [jane, jessie, marty];
  jane.grades.add(historyGrade);
  print(jessie is Object);
  print(jessie is Person);
  print(jessie is Student);
  print(jessie is SchoolBandMember);
  print(jessie is! StudentAthlete);

  print(jon);
  print(jane);
}

enum Grade { A, B, C, D, E, F }

class Person {
  Person(this.givenName, this.surname);

  String givenName;
  String surname;

  String get fullName => '$givenName $surname';

  @override
  String toString() => fullName;
}

class Student extends Person {
  Student(String givenName, String surname) : super(givenName, surname);

  var grades = <Grade>[];

  @override
  String get fullName => '$givenName, $surname';
}

class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);
  static const minimumPracticeTime = 2;
}

class StudentAthlete extends Student {
  StudentAthlete(String givenName, String surname) : super(givenName, surname);
  bool get isEligible => grades.every((grade) => grade != Grade.F);
}

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

class Platypus extends Animal {
  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Munch munch');
  }

  void layEggs() {
    print('Plop plop');
  }
}

abstract class DataRepository {
  factory DataRepository() => FakeWebServer();
  double? fetchTemperature(String City) {

}

class FakeWebServer implements DataRepository {
  @overrride
  double? fetchTemperature(String City) {
    return 42.0;
  }
}
