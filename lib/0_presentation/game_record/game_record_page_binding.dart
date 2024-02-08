import 'package:directional_subject/0_presentation/game_record/game_record_page.dart';
import 'package:get/get.dart';

class GameRecordPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(const GameRecordPage());
  }
}
