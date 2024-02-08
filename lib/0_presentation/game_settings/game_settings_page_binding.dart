import 'package:directional_subject/0_presentation/game_settings/game_settings_page.dart';
import 'package:get/get.dart';

class GameSettingsPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(const GameSettingsPage());
  }
}
