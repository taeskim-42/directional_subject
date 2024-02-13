import 'package:directional_subject/1_application/game/game_page_controller.dart';
import 'package:directional_subject/2_domain/game/game.dart';
import 'package:get/get.dart';

class GamePageBinding implements Bindings {
  @override
  void dependencies() {
    final argMap = Get.arguments as Map<String, dynamic>;
    final game = argMap['game'] as Game;
    Get.put(GamePageController(game));
  }
}
