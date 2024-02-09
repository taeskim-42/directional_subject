import 'package:directional_subject/1_application/game/game_page_controller.dart';
import 'package:directional_subject/2_domain/game/game.dart';
import 'package:get/get.dart';

class GamePageBinding implements Bindings {
  final game = Get.arguments as Game;
  @override
  void dependencies() {
    Get.put(GamePageController(game));
  }
}
