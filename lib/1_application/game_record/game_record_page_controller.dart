import 'package:directional_subject/1_application/core/routers.dart';
import 'package:directional_subject/2_domain/game_record/game_record.dart';
import 'package:directional_subject/2_domain/game_record/i_game_record.dart';
import 'package:get/get.dart';

class GamePageRecordController extends GetxController {
  final _repo = Get.find<IGameRecordRepository>();
  final router = Get.find<IAppRouter>();

  final gameRecords = <GameRecord>[].obs;

  @override
  void onInit() async {
    gameRecords.value = await _repo.getGameRecords() ?? [];

    super.onInit();
  }
}
