import 'package:example_demo/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationPage extends StatelessWidget {
  final textController = Get.find<TextController>();

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
          Obx(() {
            return Text(
              textController.controllerText.value,
              style: const TextStyle(
                fontSize: 25,
              ),
            );
          }),
          OutlinedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Back'),
          ),
        ],
      )),
    );
  }
}
