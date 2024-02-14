import 'package:directional_subject/0_presentation/core/app_design_system.dart';
import 'package:directional_subject/1_application/game_record_detail/game_record_detail_page_controller.dart';
import 'package:directional_subject/2_domain/player/player.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameRecordDetailPage extends GetView<GameRecordDetailPageController> {
  const GameRecordDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: controller.gameRecord.board.size,
                childAspectRatio: ((screenWidth - 200) / (screenHeight - 200)) *
                    (controller.gameRecord.board.size /
                        controller.gameRecord.board.size),
              ),
              itemCount: controller.gameRecord.board.size *
                  controller.gameRecord.board.size, // 총 항목 수
              itemBuilder: (context, index) {
                int row = index ~/ controller.gameRecord.board.size;
                int col = index % controller.gameRecord.board.size;
                return GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black), // 경계선을 추가하여 격자 모양을 강조
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            controller
                                .gameRecord.board.cells[row][col].mark.symbol,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: controller.gameRecord.board
                                    .cells[row][col].markColor.color),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            controller.gameRecord.board.cells[row][col].index !=
                                    0
                                ? "${controller.gameRecord.board.cells[row][col].index}번째"
                                : '',
                            style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 100,
              child: Column(
                children: [
                  Text("결과: ${controller.gameRecord.result}"),
                  ElevatedButton(
                    onPressed: () => controller.router.toHome(),
                    child: const Text("메인화면으로"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
