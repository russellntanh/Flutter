import 'package:my_app/Person.dart';

class Employee extends Person {
  String jobTitle;

  Employee(String name, int age, this.jobTitle) : super(name, age);

  void work() {
    print('$name is working as a $jobTitle at this company.');
  }
}
