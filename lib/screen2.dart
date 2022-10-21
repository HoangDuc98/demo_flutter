import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  String value;

  ScreenTwo({Key? key, required this.value}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState(value);
}

class _ScreenTwoState extends State<ScreenTwo> {
  String value;

  _ScreenTwoState(this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(context),
            child: const Text('Back'),
          ),
        ],
      )),
    );
  }
}
