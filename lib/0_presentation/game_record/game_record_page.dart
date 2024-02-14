import 'package:directional_subject/1_application/game_record/game_record_page_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class GameRecordPage extends GetView<GamePageRecordController> {
  const GameRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Center(child: Text("${controller.gameRecords.length}")));
  }
}
