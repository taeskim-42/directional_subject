import 'package:directional_subject/0_presentation/home/home_page.dart';
import 'package:get/get.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(const HomePage());
  }
}
