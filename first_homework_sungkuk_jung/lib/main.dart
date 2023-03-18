import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _switchValue = false;
  String? _radioValue = "A";
  final _textFieldController = TextEditingController();
  bool _checkBoxValue = false;

  void _showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("This is a snackbar!"),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert"),
          content: const Text("This is an alert dialog!"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                "21900662 정성국",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            ListTile(
              title: const Text("Drawer Item 1"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: const Text("Drawer Item 2"),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(
                  value: _switchValue,
                  onChanged: (value) => setState(() => _switchValue = value),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: "A",
                      groupValue: _radioValue,
                      onChanged: (value) =>
                          setState(() => _radioValue = value as String),
                    ),
                    const Text("A"),
                    Radio(
                      value: "B",
                      groupValue: _radioValue,
                      onChanged: (value) =>
                          setState(() => _radioValue = value as String),
                    ),
                    const Text("B"),
                    Radio(
                      value: "C",
                      groupValue: _radioValue,
                      onChanged: (value) =>
                          setState(() => _radioValue = value as String),
                    ),
                    const Text("C"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _textFieldController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '글을 입력해주세요.',
                    ),
                  ),
                ),
                Checkbox(
                  value: _checkBoxValue,
                  onChanged: (value) => setState(() => _checkBoxValue = value!),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.favorite),
                      onPressed: () {},
                    ),
                    Switch(
                      value: _switchValue,
                      onChanged: (value) =>
                          setState(() => _switchValue = value),
                    ),
                    TextButton(
                      onPressed: _showAlertDialog,
                      child: Text(
                        "Show Alert Dialog",
                        style: TextStyle(color: Colors.yellow.shade700),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: _showSnackBar,
                      child: const Text("Show Snack Bar"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(
                          "Item ${index + 1}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Subtitle ${index + 1}"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 5000,
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: List.generate(9, (index) {
                      return Card(
                        child: Center(
                          child: Text("Item $index"),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
