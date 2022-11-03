
import 'package:example_demo/binding/basic_binding.dart';
import 'package:example_demo/binding/root_binding.dart';
import 'package:example_demo/ui/screen/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp( GetMaterialApp(
    initialBinding: BasicBinding(),
    home: const HomePageScreen(),
  ));
}

