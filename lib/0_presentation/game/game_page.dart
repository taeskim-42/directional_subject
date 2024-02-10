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

    return Obx(
      () => Stack(
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: controller.currentGame.value.board.size,
              childAspectRatio: (screenWidth / screenHeight) *
                  (controller.currentGame.value.board.size /
                      controller.currentGame.value.board.size),
            ),
            itemCount: controller.currentGame.value.board.size *
                controller.currentGame.value.board.size, // 총 항목 수
            itemBuilder: (context, index) {
              int row = index ~/ controller.currentGame.value.board.size;
              int col = index % controller.currentGame.value.board.size;
              return GestureDetector(
                onTap: () =>
                    controller.currentGame.value.board.cells[row][col].symbol ==
                            ""
                        ? controller.playGame(row, col)
                        : () => (),
                child: Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.black), // 경계선을 추가하여 격자 모양을 강조
                  ),
                  child: Center(
                    child: Text(
                      controller.currentGame.value.board.cells[row][col].symbol,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
          ),
          ElevatedButton(
            onPressed: () => controller.router.toHome(),
            child: const Text("메인화면으로"),
          ),
        ],
      ),
    );
  }
}
