import 'package:directional_subject/1_application/core/routers.dart';
import 'package:directional_subject/2_domain/game_record/game_record.dart';
import 'package:get/get.dart';

class GameRecordDetailPageController extends GetxController {
  final GameRecord gameRecord;

  GameRecordDetailPageController(this.gameRecord);

  final router = Get.find<IAppRouter>();
}
