import 'package:directional_subject/0_presentation/game/game_page.dart';
import 'package:get/get.dart';

class GamePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(const GamePage());
  }
}
