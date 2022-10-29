import 'package:get/get.dart';

class BasicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BasicController());
  }
  
}