import 'package:directional_subject/0_presentation/core/app_design_system.dart';
import 'package:directional_subject/1_application/game_record/game_record_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class GameRecordPage extends GetView<GamePageRecordController> {
  const GameRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Material(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('게임 기록'),
          ),
          body: Stack(
            children: [
              if (controller.gameRecords.isEmpty)
                Center(
                  child: Text(
                    "현재 게임 기록이 없어요!",
                    style: AppTextTheme.title1,
                  ),
                ),
              ListView.builder(
                itemCount: controller.gameRecords.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          controller.router.toGameRecordsDetail(
                              controller.gameRecords[index]);
                        },
                        leading: const Icon(Icons.gamepad),
                        title: Text("${controller.gameRecords[index].endTime}"),
                        subtitle: Text(
                            'Result: ${controller.gameRecords[index].result}'),
                      ),
                      const Divider(
                        height: 1, // 구분선의 높이 설정
                        color: Colors.grey, // 구분선의 색상 설정
                        thickness: 1, // 구분선의 두께 설정
                      ),
                    ],
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 50), // 하단에서 50의 간격을 둡니다.
                  child: ElevatedButton(
                    onPressed: () => controller.router.toHome(),
                    child: const Text("메인화면으로"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
