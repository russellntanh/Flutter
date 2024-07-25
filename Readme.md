Part I : Environment Settings
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
Part II : Dart Fundamentals

1. Khai bao bien co ban
```
String name = 'Russell';
int age = 40;
bool old = false;
double sum = 8.5;

print(name);	// output: Russell
print(age);		// output: 40
print(old);		// output: false
print (sum);	// output: 8.5
```

2. Khai bao bien chap nhan moi kieu
```
dynamic all;
print(all);    // output: null

all = 'My name is Russell';
all = 40;
all = true;
all = 8.5;
```
3. Khai bao bien kieu Var
```
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
```
var v = 'Hello';
v = 50; 		// output: error occurs
```

===============================================================
Part III : Flutter




