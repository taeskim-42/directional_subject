import 'package:directional_subject/1_application/game_record/game_record_page_controller.dart';
import 'package:get/get.dart';

class GameRecordPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(GamePageRecordController());
  }
}
