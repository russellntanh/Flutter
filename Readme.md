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

===============================================================
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
## Unit 5 - Class


# Part III : Flutter




