# Part I : Environment Settings
1. Install Dart SDK	=> Done
   - C:/Program Files/dart
   - CMD -> dart --version
   
2. Install Flutter SDK => Done
   - C:/Program Files/flutter
   - CMD -> flutter doctor
   
3. Install Android Studio => Done
   - To run the virtual device

   
4. Install IDE (VS Code)
   - Extension add: flutter
   - Extension add: dart

Press "flutter doctor" to check all below:
  - [√] Flutter (Channel stable, 3.22.3, on Microsoft Windows [Version 10.0.19045.4529], locale vi-VN)
  - [√] Windows Version (Installed version of Windows is version 10 or higher)
  - [√] Android toolchain - develop for Android devices (Android SDK version 34.0.0) 
    * Android Studio > More Options > SDK Manager > Android SDK > SDK Tool tab > Android SDK Command-line Tool (latest)
  - [√] Chrome - develop for the web
  - [√] Visual Studio - develop Windows apps (Visual Studio Community 2019 16.11.8)
  - [√] Android Studio (version 2022.2)
  - [√] VS Code (version 1.91.1)
  - [√] Connected device (3 available)
  - [√] Network resources

5. Create virtual machine
   - Android Studio > More Actions > Virtual Device Manager > Create Device > Phone > Pixel 4 (5.7 inch) > Download R
   - Android Studio > More Acitons > SDK Manager > Android SDK > SDK Tools > Intel 86x > Google Play services

6. Create the app
   - VS Code > Terminal > Type : flutter create my_app
   - Turn on virtual machine "Pixel 4"
   - Go to "lib" > Open "main.dart"
   - Select created virtual machine "Pixel 4"
   - Press "Run and Debug"

7. Restart PC if it does not work

---
# Part II : Dart Fundamentals
## Unit 1 - Variable declaration basic
### 1. Bien co ban trong Dart
```dart
String name = 'Russell';
int age = 40;
bool old = false;
double sum = 8.5;

print(name);	// output: Russell
print(age);		// output: 40
print(old);		// output: false
print (sum);	// output: 8.5
```

### 2. Khai bao bien chap nhan moi kieu (dynamic)
```dart
dynamic all;
print(all);    // output: null

all = 'My name is Russell';
all = 40;
all = true;
all = 8.5;
```
### 3. Khai bao bien kieu chap nhan moi kieu (var)
```dart
var varAll;
varAll = 'Russell';
varAll = 40;
varAll = false;
varAll = 8.5;
```

- dynamic : can be changed during coding
```
dynamic dyn = 'Hello';
dyn = 50;
print(dyn); 	// output: 50
```
- var : can't change type after firs time declaration.
```dart
var v = 'Hello';
v = 50; 		// output: error occurs
```

## Unit 2 - Collections (List, Map) and Const & Final
### 1. List
To store a certain data such as String, int, double, boolean
```dart
List<String> name = ['Russell', 'Tony', 'Rabbit'];
List<int> money = [100, 200, 300, 400, 500];

print(name);    // output: [Russell, Tony, Rabbit]
print(name[2]); // output: Rabbit

```

### 2. Map
To store a pair of key and value data
```dart
Map<String, String> un_pw = {
    '001': 'russell',
    '002': 'tony',
    '003': 'rabbit'
  };

  print(un_pw);        // output: {001: russell, 002: tony, 003: rabbit}
  print(un_pw['002']); // output: tony
```

### 3. Const
The const variable must be initialized at compile time and can not be changed in runtime.
```dart
const pi = 3.1415926535897932;
//PI = 3.1111111; // output: error
print(pi); // output: 3.141592653589793
```
### 4. Final
```dart
final MAX_VALUE = 255;
print(MAX_VALUE);
```
Note:
- Prefer const over final for declarations.
- PREFER using const for constant-valued declarations.
- Constant declarations are more hot-reload friendly and allow values to be used in other constant expressions.

## Unit 3 - Operators
### 1. Arithmetic operator
Add, Substract, Multiply, Divide, Integer divide, Modulus
```dart
  int x = 6;
  int y = 4;

  print(x + y); // output: 10
  print(x - y); // output: 2
  print(x * y); // output: 24
  print(x / y); // output: 1.5
  print(x ~/ y); // output: 1
  print(x % y); // output: 2

```

### 2. Comparison operator
Equal, Not equal, Greater than, Less than, Greater than or Equal, Less than or Equal

```dart
  var x = 5;
  var y = 6;
  print(x == y); // output: false
  print(x != y); // output: true
  print(x < y); // output: true
  print(x > y); // output: false
  print(x <= y); // output: true
  print(x >= y); // output: false
```
### 3. Logical operator
And, Or, Not
```dart
  var x = true;
  var y = false;

  print(x & y); // And => output: false
  print(x | y); // Or => output: true
  print(!x); // Not => output: false
```

### 4. Assignment operator
```dart
  var x = 5.0;

  print(x += 3); // output: 8
  print(x -= 3); // output: 5
  print(x++); // output: 6
  print(x--); // output: 5
  print(x /= 2); // output: 2.5
  print(x ~/ 2); // output: 1
  print(x *= 2); // output 5
  print(8 % 5); // output: 3
```

### 5. Condition operator (if-else, for)
```dart
  var a = 9;

  // cach 1:
  if (a == 9) {
    print('Phep toan dung');
  } else {
    print('Phep toan sai');
  }

  // cach 2:
  a == 9 ? print('Phep toan dung') : print('Phep toan sai');
  
  // for loop
  List<String> userName = ['Russell', 'Tony', 'Rabbit'];

  for (int i = 0; i < userName.length; i++) {
    userName[i] == 'Rabbit' ? userName[i] = 'Vi Anh' : userName[i];

    print(userName[i]);
  }
```

## Unit 4 - Function
```dart
void main()
{
  // No argument
  ShowLog();

  // With argument
  var sum = CalculateSum(5, 10);
  print(sum);

  // With default argument
  var div = CalculateDiv(x: 6, y: 3);
  print(div);
}

void ShowLog() 
{
  print('This is sample log.');
}

int CalculateSum(int x, int y) => x + y;

double? CalculateDiv({double x = 3.5, double y = 2.5}) 
{
  if (x != 0) return y / x;
}
```
## Unit 5 - Class and OOP in Dart

**Class**
- Book(this.name, this.year) : constructor
- Book(required this.name, required this.year) constructor
- Book({ // constructor
	required this.name, 
	required this.year
  }) 

```dart 
// Create a class in lib folder
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void intro() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

// Create an instance in main
import 'Person.dart';

void main() {
  var person = Person('Russell', 40);

  person.intro();
}

```
- Keyword late : 
Declare without initialization in the class. It can be initialized later in the function.
 This is particularly useful when you want to defer the initialization of a variable until it is actually needed, allowing for more flexible and efficient coding.
```dart
class Temparature{
   late double celcius;
   
   void setTemparature(double temparature)
   {
     celcius = temparature;
   }
   
   double toFahrenheit(){
	 return celsius * 9 / 5 + 32;
   }
}

import 'package:my_app/Temparature.dart';

void main() {
  var temp = Temperature();
  temp.setTemperature(25);
  print('Temparature in Celcius is $temp.Celcius');
  print('Temperature in Fahrenheit: ${temp.toFahrenheit()}'); // Output: Temperature in Fahrenheit: 77.0
}
```
**OOP - Inheritance**
- Allow a class can inherit properties and methods from other class by the **extend** keyword.
```dart
class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Method
  void introduce() {
    print('Hi, my name is $name and I am $age years old.');
  }
}

class Employee extends Person {
  String jobTitle;

  Employee(String name, int age, this.jobTitle) : super(name, age);

  void work() {
    print('$name is working as a $jobTitle.');
  }
}

void main() {
  var employee = Employee('Bob', 25, 'Engineer');
  employee.introduce(); // Output: Hi, my name is Bob and I am 25 years old.
  employee.work(); // Output: Bob is working as an Engineer.
}
```

**OOP - Encapsulation**
- Encapsulation in Dart is achieved by using private members bt prefixing an identifier with an **underscore** (_)
```dart
class BankAccount {
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  void deposit(double amount) {
    _balance += amount;
    print('Deposited: \$${amount}, New Balance: \$$_balance');
  }

  void withdraw(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      print('Withdrew: \$${amount}, Remaining Balance: \$$_balance');
    } else {
      print('Insufficient funds');
    }
  }
}

void main() {
  var account = BankAccount('123456', 1000.0);
  account.deposit(500.0); // Output: Deposited: $500.0, New Balance: $1500.0
  account.withdraw(200.0); // Output: Withdrew: $200.0, Remaining Balance: $1300.0
  account._accountNumber; // error
  account._balance; // error
}
```

**OOP - Abstraction**
- Abstract classes are classes that cannot be instantiated and are meant to be extended by other classes by **abstract** keyword.
- In these examples, polymorphism allows the draw method and startEngine method to work with different types of shapes and vehicles, respectively.
```dart
abstract class Vehicle {
  void startEngine();
}

class Car extends Vehicle {
  @override
  void startEngine() {
    print('Car engine started');
  }
}

class Motorcycle extends Vehicle {
  @override
  void startEngine() {
    print('Motorcycle engine started');
  }
}

void main() {
  Vehicle myCar = Car();
  Vehicle myMotorcycle = Motorcycle();
  
  myCar.startEngine(); // Output: Car engine started
  myMotorcycle.startEngine(); // Output: Motorcycle engine started
}
```
**OOP - Polymophism**
- Polymorphism in Dart is primarily achieved through method **overriding** and **interface**
- In below example, the makeSound method is overridden in the Dog and Cat classes, demonstrating polymorphism. The same method call produces different results based on the object type.
```dart
class Animal {
  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog barks');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Cat meows');
  }
}

void main() {
  Animal myDog = Dog();
  Animal myCat = Cat();
  
  myDog.makeSound(); // Output: Dog barks
  myCat.makeSound(); // Output: Cat meows
}
```

- Dart does not have a special syntax for interfaces. Instead, all classes implicitly define an interface by using the **implements** keyword.
```dart
abstract class Shape {
  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print('Drawing a Circle');
  }
}

class Square implements Shape {
  @override
  void draw() {
    print('Drawing a Square');
  }
}

void main() {
  Shape circle = Circle();
  Shape square = Square();
  
  circle.draw(); // Output: Drawing a Circle
  square.draw(); // Output: Drawing a Square
}
```

**Setter and Getter**
- Getters and setters in Dart are special methods that provide read and write access to an object's properties. 
They allow you to control how a particular property is accessed by **get** or modified **set**
```dart
class Rectangle {
  late int _width;
  late int _length;

  int get GetWidth => _width;
  int get GetLength => _length;

  set SetLength(int value) {
    if (value >= 0) {
      _length = value;
    } else {
      print('Not a valid value');
    }
  }

  set SetWidth(int value) {
    if (value >= 0) {
      _length = value;
    } else {
      print('Not a valid value');
    }
  }

  Rectangle(this._width, this._length);
}


void main() {
  var rec = Rectangle(200, 100);
  print(rec.GetLength); // get
  print(rec.GetWidth);  // get

  rec.SetLength = 400;  // set
  rec.SetWidth = 300;   // set

  print(rec.GetLength);
  print(rec.GetWidth);
}
```

**Other stuff: Mixin keyword**
- Mixins are a way of reusing a class's code in multiple class hierarchies by using **mixin** keyword.
```dart
mixin Walk {
  void walk() {
    print('Walking');
  }
}

mixin Run {
  void run() {
    print('Running');
  }
}

class Person with Walk, Run {}

void main() {
  var person = Person();
  person.walk(); // Output: Walking
  person.run(); // Output: Running
}

```
---
# Part III : Flutter Fundamentals
## Unit 6 - Widget 

### Theory
- To understand and to practice some important Widgets in flutter

#### Text
- To display a certain content in a type of text on the screen.

#### Center
- To center allign all elements.

#### Column
- To contain the elements(children) which allign in a vertical direction

#### Row
- To contain the elements(children) which allign in a horizontal direction

#### Stack
- To arrange the elements which be overlapped

#### Container
- To create a box

#### SizedBox
- To create the space or distance between two elments

### Practice for FirstApp design
![image](https://github.com/user-attachments/assets/e2b2a4db-c111-47d5-80ba-49fa194b3725)


```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boxMethod('Box 1', 150, 150, Alignment.bottomRight),
                  boxMethod('Box 2', 150, 150, Alignment.bottomLeft),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boxMethod('Box 3', 150, 150, Alignment.topRight),
                  boxMethod('Box 4', 150, 150, Alignment.topLeft),
                ],
              ),
            ],
          ),
          Center(
              child: boxMethod('Hello World', 200, 200, Alignment.center, true))
        ]),
      ),
    );
  }

  Container boxMethod(String name, double w, double h, Alignment alignment,
      [bool radius = false]) {
    return Container(
      decoration: BoxDecoration(
          color: radius ? Colors.green : Colors.blue,
          borderRadius: BorderRadius.circular(radius ? 100 : 0)),
      alignment: alignment,
      width: w,
      height: h,
      child: Text(
        name,
        style: const TextStyle(fontSize: 30, color: Colors.red),
      ),
    );
  }
}
```
## Flutter - Unit 2: Build a ToDoList app
#### Practice ListView widget
![image](https://github.com/user-attachments/assets/54075648-cbc7-4c58-8a4f-761caa784172)

#### Sample ListView code
- We can use ListView.builder with existing List to create the widge dynamically.
```dart
// main application
import 'dart:developer';

import 'package:flutter/material.dart';
import 'boxContainer.dart';
import 'circleContainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List _list = [
    'item 1',
    'item 2',
    'item 3',
    'item 4',
    'item 5',
    'item 6',
    'item 7',
    'item 8',
    'item 9',
    'item 10',
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CircleContainer(
                  color: Colors.red,
                ),
                CircleContainer(color: Colors.yellow),
                CircleContainer(color: Colors.green),
                CircleContainer(color: Colors.purple),
                CircleContainer(color: Colors.orange),
                CircleContainer(color: Colors.cyan),
                CircleContainer(color: Colors.amber),
                CircleContainer(color: Colors.pink),
              ],
            )),
            Expanded(
              child: ListView.builder(
                itemCount: _list.length,
                itemBuilder: (context, index) {
                  return BoxContainer(child: _list[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

```

#### Rectangle with input list data
```dart
// How to call extracted method with input parameter
import "package:flutter/material.dart";

class BoxContainer extends StatelessWidget {
  final String child;

  const BoxContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 100,
        color: Colors.amber,
        child: Center(
          child: Text(
            child,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
```
##### Circle with input color param
```dart
import "package:flutter/material.dart";

class CircleContainer extends StatelessWidget {
  final Color color;
  const CircleContainer({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

```

### ToDoList Figma desing
![image](https://github.com/user-attachments/assets/4c923040-d5f0-477d-9a4d-7b9e3c1d21d4) 

- Padding : add the space to the content inside.
- Margin : add the space outside.

#### main.dart
```dart
import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:todolist/model/task_model.dart';

import 'widget/bottom_widget.dart';
import 'widget/task_widget.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<TaskModel> taskList = [];

  // Insert new task to the taskList
  void _handleAddTask(String name) {
    final newTask = TaskModel(id: DateTime.now().toString(), name: name);
    setState(() {
      // Check duplicated task name
      for (int i = 0; i < taskList.length; i++) {
        if (name == taskList[i].name) return;
      }

      // Insert to taskList
      taskList.add(newTask);

      Navigation
    });
  }

  // Delete a selected task
  void _handleDeleteTask(String id) {
    setState(() {
      taskList.removeWhere((item) => item.id == id);
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // App Header
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text(
              'ToDoList',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),

        // App Body: main content by method 1 (More efficient)
        body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          itemCount: taskList.length,
          itemBuilder: (context, index) => TaskWidget(
            task: taskList[index],
            deleteTask: _handleDeleteTask,
          ),
        ),

        // App Body: main content by method 2
        // body: SingleChildScrollView(
        //   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        //   child: Column(
        //     children: taskList.map((item) => TaskWidget(task: item)).toList(),
        //   ),
        // ),

        // App Footer
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return bottom_widget(addTask: _handleAddTask);
              },
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
```

#### bottom_widget.dart
```dart
import 'package:flutter/material.dart';

class bottom_widget extends StatelessWidget {
  bottom_widget({
    super.key,
    required this.addTask,
  });

  final Function addTask;

  String inputTask = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        height: 200,
        child: Column(
          children: [
            // Place for user to input text
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Input your task title",
              ),
              // save the content which user has typed to "inputText" variable
              onChanged: (value) => inputTask = value,
            ),

            // Just blank box to create gab between input text and button
            SizedBox(height: 30),

            // Add Task button
            ElevatedButton(
                onPressed: () {
                  if (inputTask.isEmpty) {
                    return;
                  }
                  addTask(inputTask);
                  print(inputTask);
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                      child: Text(
                    'Add Task',
                    style: TextStyle(fontSize: 18),
                  )),
                ))
          ],
        ),
      ),
    );
  }
}
```

###

#### task_widget.dart
```dart
import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:todolist/model/task_model.dart';

class TaskWidget extends StatelessWidget {
  TaskWidget({
    super.key,
    required this.task,
    required this.deleteTask,
  });

  TaskModel task;
  final Function deleteTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 224, 221, 221),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Display task title
            Text(
              task.name,
              style: TextStyle(
                color: const Color(0xff4B4B4B),
                fontSize: 20,
              ),
            ),

            // Delete a task
            InkWell(
              onTap: () async {
                if (await confirm(context)) {
                  deleteTask(task.id);
                  print('Task is deleted');
                }
                return;
              },

              // Display delete icon
              child: Icon(
                Icons.delete,
                color: Color(0xff4B4B4B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

#### task_model.dart
```dart
class TaskModel {
  final String id;
  final String name;

  TaskModel({required this.id, required this.name});
}
```

#### Notes
To add confirm_dialog : 
 + Step 1: Ctrl + P
 + Step 2: Add dependency
 + Step 3: Type "config_dialog"
 + Step 4: Add async/await confirm.

```dart 
// Delete a task
InkWell(
  onTap: () async {
	if (await confirm(context)) {
	  deleteTask(task.id);
	  print('Task is deleted');
	}
	return;
  },
```
---
# Part IV: Advanced Flutter Parts

## Statefull and Stateless 
### Stateless Widget
A Stateless Widget is a widget that does not have any internal state. This means that once it is built, it will not change unless its parent widget rebuilds it with new data. Stateless widgets are immutable, meaning their properties cannot change—once created, their configuration is fixed.

**Use Cases**:

- UI elements that do not need to update dynamically.
- Displaying static content such as text, icons, and images.
- Widgets that don't depend on user interaction for their behavior.
```dart
import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  final String title;

  MyStatelessWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: MyStatelessWidget(title: "Hello, World!"),
      ),
    ),
  ));
}
```

#### Statefull Widget
A Stateful Widget is a widget that has a mutable state. This means that it can change its appearance in response to user interaction or other factors over time. Stateful widgets consist of two classes: the widget itself and the state object. The state object holds the mutable state for the widget and can be updated using the setState method, which triggers a rebuild of the widget.

**Use Cases**:

- Widgets that need to update dynamically, such as forms, buttons, or interactive elements.
- UI elements that need to change based on user input or events.
- Managing local state that affects the widget's appearance or behavior.

```dart
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String title = "Hello, World!";

  void _changeTitle() {
    setState(() {
      title = "Hello, Flutter!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title),
        ElevatedButton(
          onPressed: _changeTitle,
          child: Text("Change Title"),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: MyStatefulWidget(),
      ),
    ),
  ));
}
```

## Navigation 

### Basic Navigation
This is use in case of you have only several pages by using keyword
```dart
	ElevatedButton(
	  onPressed: () {
		Navigator.push(
			context,
			MaterialPageRoute(
			  builder: (context) => FirstPage(),
			));
	  },
```

### Advanced Navigation
This is used in case of you have a lot of pages by using keyword "route"

```dart
// declare the name of each page in main function
Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/secondpage': (context) => SecondPage(),
      },
    );
  }
```


```dart
// call at the each page
ElevatedButton(
	onPressed: () {
	  Navigator.pushNamed(context, '/secondpage');
	},
```






