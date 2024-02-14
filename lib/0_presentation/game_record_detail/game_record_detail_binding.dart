import 'package:directional_subject/1_application/game_record_detail/game_record_detail_page_controller.dart';
import 'package:directional_subject/2_domain/game_record/game_record.dart';
import 'package:get/get.dart';

class GameRecordDetailPageBinding implements Bindings {
  @override
  void dependencies() {
    final argMap = Get.arguments as Map<String, dynamic>;
    final gameRecord = argMap['gameRecord'] as GameRecord;
    Get.put(GameRecordDetailPageController(gameRecord));
  }
}
