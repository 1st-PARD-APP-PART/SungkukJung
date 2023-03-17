import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // StatelessWidget shows a UI with data that is not going to change.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'first_hw', //  title of app
      theme: ThemeData(
        // configure the theme (appearance) of the app
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '21900662 정성국'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // StatefulWidget is used when the developer wants the widget to hold some data and see when the data changes in real-time
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // setState is a function that is used to notify the state class that the data has changed
      // The build method will refresh every time the setState function is executed.
      _counter += 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is refreshed verthing setState is run.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true, // aligns the title to the center
      ),
      body: Center(
        // Positions the elements in the body to be aligned in the center.
        child: Column(
          // aligns the children inside of the Column widget vertically
          mainAxisAlignment: MainAxisAlignment
              .center, // aligns the children to the middle of the main axis
          children: <Widget>[
            const Text(
              '사람은 어려움 속에서 성장한다.',
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
      ),
    );
  }
}
