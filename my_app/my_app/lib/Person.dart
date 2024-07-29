class Person {
  late String name;
  late int age;

  Person(this.name, this.age);

  void intro() {
    print('Hello, my name is $name and I am $age years old.');
  }
}
