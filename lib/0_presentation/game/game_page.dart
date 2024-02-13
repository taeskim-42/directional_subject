import 'package:directional_subject/0_presentation/core/app_design_system.dart';
import 'package:directional_subject/0_presentation/game/components/circualr_button.dart';
import 'package:directional_subject/1_application/game/game_page_controller.dart';
import 'package:directional_subject/2_domain/player/player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class GamePage extends GetView<GamePageController> {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final player1style = AppTextTheme.title1.copyWith(
        color: controller.currentGame.value.player1.mark.markColor.color);
    final player2style = AppTextTheme.title1.copyWith(
        color: controller.currentGame.value.player2.mark.markColor.color);

    return Obx(
      () => Material(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Stack(
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 20, // 동그라미의 너비
                        height: 20, // 동그라미의 높이
                        decoration: BoxDecoration(
                          color:
                              controller.currentGame.value.currentPlayer.name ==
                                      controller.currentGame.value.player1.name
                                  ? Colors.amber
                                  : Colors.transparent,
                          shape: BoxShape.circle, // 컨테이너를 동그라미 모양으로 설정
                        ),
                      ),
                      Text(
                        controller.currentGame.value.player1.name,
                        style: player1style,
                      ),
                      AppSpacing.vLarge,
                      const Text("Mark"),
                      Text(
                          controller.currentGame.value.player1.mark.mark.symbol,
                          style: player1style),
                      AppSpacing.vLarge,
                      const Text("UndoCount"),
                      CircularButton(
                        onPressed: () => controller
                            .handleUndo(controller.currentGame.value.player1),
                        text: "${controller.player1Undo.value}",
                        condition: controller.undoClicked.value ||
                            controller.isBoardEmpty.value ||
                            controller.currentGame.value.player1.name ==
                                controller
                                    .currentGame.value.currentPlayer.name ||
                            controller.player1Undo.value == 0,
                      ),
                      AppSpacing.vLarge,
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              controller.currentGame.value.board.size,
                          childAspectRatio:
                              ((screenWidth - 200) / (screenHeight - 200)) *
                                  (controller.currentGame.value.board.size /
                                      controller.currentGame.value.board.size),
                        ),
                        itemCount: controller.currentGame.value.board.size *
                            controller.currentGame.value.board.size, // 총 항목 수
                        itemBuilder: (context, index) {
                          int row =
                              index ~/ controller.currentGame.value.board.size;
                          int col =
                              index % controller.currentGame.value.board.size;
                          return GestureDetector(
                            onTap: () => controller.currentGame.value.board
                                        .cells[row][col].mark.symbol ==
                                    ""
                                ? controller.playGame(row, col)
                                : () => (),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black), // 경계선을 추가하여 격자 모양을 강조
                              ),
                              child: Center(
                                child: Text(
                                  controller.currentGame.value.board
                                      .cells[row][col].mark.symbol,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: controller.currentGame.value.board
                                          .cells[row][col].markColor.color),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 20, // 동그라미의 너비
                        height: 20, // 동그라미의 높이
                        decoration: BoxDecoration(
                          color:
                              controller.currentGame.value.currentPlayer.name ==
                                      controller.currentGame.value.player2.name
                                  ? Colors.amber
                                  : Colors.transparent, // 동그라미의 색상
                          shape: BoxShape.circle, // 컨테이너를 동그라미 모양으로 설정
                        ),
                      ),
                      Text(controller.currentGame.value.player2.name,
                          style: player2style),
                      AppSpacing.vLarge,
                      const Text("Mark"),
                      Text(
                          controller.currentGame.value.player2.mark.mark.symbol,
                          style: player2style),
                      AppSpacing.vLarge,
                      const Text("UndoCount"),
                      CircularButton(
                        onPressed: () => controller
                            .handleUndo(controller.currentGame.value.player2),
                        text: "${controller.player2Undo.value}",
                        condition: controller.undoClicked.value ||
                            controller.isBoardEmpty.value ||
                            controller.currentGame.value.player2.name ==
                                controller
                                    .currentGame.value.currentPlayer.name ||
                            controller.player2Undo.value == 0,
                      ),
                      AppSpacing.vLarge,
                    ],
                  ),
                ],
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
