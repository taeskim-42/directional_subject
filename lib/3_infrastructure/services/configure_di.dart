import 'package:dartz/dartz.dart';
import 'package:directional_subject/1_application/core/routers.dart';
import 'package:directional_subject/2_domain/game_record/i_game_record.dart';
import 'package:directional_subject/3_infrastructure/game_record/game_record_repository.dart';
import 'package:get/instance_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Unit> configure() async {
  final pref = await SharedPreferences.getInstance();
  Get.put<SharedPreferences>(pref);
  Get.put<IAppRouter>(AppRouter.instance);
  Get.put<IGameRecordRepository>(GameRecordRepository());

  return unit;
}
