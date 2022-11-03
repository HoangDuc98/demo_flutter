import 'package:example_demo/routes/routes.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../controllers/main_controller/main_screen_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screen2.dart';

class HomePageScreen extends GetView<MainController> {
  const HomePageScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo'),
        ),
        body: _getBody(context));
  }

  _getBody(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: TextField(
              controller: controller.textController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nhap text",
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Get.toNamed(Routes.screen_two);
            },
            child: const Text('Submit'),
          ),
          Obx(() {
            return Text(
              controller.controllerText.value,
              style: Theme.of(context).textTheme.headline4,
            );
          })
        ],
      ),
    );
  }
}
