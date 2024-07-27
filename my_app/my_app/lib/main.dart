void main() {
  List<String> userName = ['Russell', 'Tony', 'Rabbit'];

  for (int i = 0; i < userName.length; i++) {
    userName[i] == 'Rabbit' ? userName[i] = 'Vi Anh' : userName[i];

    print(userName[i]);
  }
}

/*
// Assignment operators
void main() {
  var x = 5.0;

  print(x += 3); // output: 8
  print(x -= 3); // output: 5
  print(x++); // output: 6
  print(x--); // output: 5
  print(x /= 2); // output: 2.5
  print(x ~/ 2); // output: 1
  print(x *= 2); // output 5
  print(8 % 5); // output: 3
}
*/
/*
// Logical operators
void main() {
  var x = true;
  var y = false;

  print(x & y); // And => output: false
  print(x | y); // Or => output: true
  print(!x); // Not => output: false
}
*/
/*
// Comparision operators
void main() {
  var x = 5;
  var y = 6;
  print(x == y); // output: false
  print(x != y); // output: true
  print(x < y); // output: true
  print(x > y); // output: false
  print(x <= y); // output: true
  print(x >= y); // output: false
}
*/
/*
// Arimethic operators
void main() {
  int x = 6;
  int y = 4;

  print(x + y); // output: 10
  print(x - y); // output: 2
  print(x * y); // output: 24
  print(x / y); // output: 1.5
  print(x ~/ y); // output: 1
  print(x % y); // output: 2
}
*/
/*
// Collections 
void main() {
  List<String> name = ['Russell', 'Tony', 'Rabbit'];

  print(name); // output: [Russell, Tony, Rabbit]
  print(name[2]); // output: Rabbit

  Map<String, String> un_pw = {
    '001': 'russell',
    '002': 'tony',
    '003': 'rabbit'
  };

  print(un_pw); // output: {001: russell, 002: tony, 003: rabbit}
  print(un_pw['002']); // output: tony

  const pi = 3.1415926535897932;
  //PI = 3.1111111; // output: error
  print(pi); // output: 3.141592653589793

  final MAX_VALUE = 255;
  print(MAX_VALUE);
}
*/
/*
// Basic variables
void main(List<String> args) {
  String s = 'i am Russell';
  int i = 40;
  bool b = false;
  double d = 9.5;

  print(s); // output: s
  print(i); // output: i
  print(b); // output: b
  print(d); // output: d

  dynamic dyn = 'I am Tony';
  dyn = 6;
  dyn = true;
  print(dyn); // output: true

  var v = 'I am Rabbit'; // output: I am Rabbit
  v = true; // output: error
  print(v);
}
*/

/*
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hello from Russell'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/
