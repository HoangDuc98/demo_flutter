
import 'package:example_demo/screen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: HomePage(),
  ));
}

class TextController extends GetxController {
  final textController = TextEditingController();

  final controllerText = ''.obs;

  @override
  void onInit() {
    super.onInit();
    textController.addListener(() {
      controllerText.value = textController.text;
    });
  }
}

class HomePage extends StatelessWidget {
  final controller = Get.put(TextController());

   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
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
              child:  TextField(
                controller: controller.textController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nhap text",
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Get.to(
                  InformationPage(),
                );
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
      ),
    );
  }
}
