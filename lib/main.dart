import 'package:example_demo/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController editingController = TextEditingController();
  String? userPost;

  void _incrementText() {
    setState(() {
      userPost = editingController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    String value = '';
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: TextField(
                controller: editingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nhap text",
                ),
                onChanged: (userPost) {
                  value = userPost;
                },
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScreenTwo(
                    value: value,
                  ),
                ));
              },
              child: const Text('Submit'),
            ),
            Text(
              "My name is : $userPost",
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
