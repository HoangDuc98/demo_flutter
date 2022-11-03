import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainController extends GetxController{
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