import 'package:example_demo/controllers/main_controller/main_screen_controller.dart';
import 'package:example_demo/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationPage extends GetView<MainController> {
  const InformationPage({Key key}) : super(key: key);

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
              controller.controllerText.value,
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
