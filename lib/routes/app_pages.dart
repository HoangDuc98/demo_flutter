import 'package:example_demo/binding/basic_binding.dart';
import 'package:example_demo/routes/routes.dart';
import 'package:example_demo/ui/screen/home_page_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final page = [
    GetPage(name: Routes.main, page: () => const HomePageScreen(), binding: BasicBinding())
  ];
}