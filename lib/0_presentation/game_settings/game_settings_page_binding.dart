import 'package:directional_subject/1_application/game_settings/game_settings_page_controller.dart';
import 'package:get/get.dart';

class GameSettingsPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(GameSettingsPageController());
  }
}
