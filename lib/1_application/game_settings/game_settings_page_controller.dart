import 'dart:math';

import 'package:directional_subject/1_application/core/routers.dart';
import 'package:directional_subject/2_domain/board/board.dart';
import 'package:directional_subject/2_domain/game/game.dart';
import 'package:directional_subject/2_domain/player/player.dart';
import 'package:get/get.dart';

class GameSettingsPageController extends GetxController {
  final router = Get.find<IAppRouter>();
  final gameSize = [3, 4, 5];
  final players = ["Random", "Player1", "Player2"];
  final currentPlayer = Player.init()
      .copyWith(
        name: 'Player1',
        mark: Mark(mark: PlayerMark.cross, markColor: PlayerColor.blue),
      )
      .obs;

  // board settings
  final selectedSize = 3.obs;
  final windCondition = 3.obs;

  // player settings
  final player1 = Player.init()
      .copyWith(
        name: 'Player1',
        mark: Mark(mark: PlayerMark.cross, markColor: PlayerColor.blue),
      )
      .obs;
  final player2 = Player.init()
      .copyWith(
        name: 'Player2',
        mark: Mark(mark: PlayerMark.circle, markColor: PlayerColor.red),
      )
      .obs;
  final selectedPlayer = 0.obs;

  void updateGameSize(int size) {
    selectedSize.value = size;
  }

  void updatePlayerMark(Player player, Mark mark) {
    player == player1.value
        ? player1.value = player.copyWith(mark: mark)
        : player2.value = player.copyWith(mark: mark);
  }

  void switchPlayer(int index) {
    if (index == 0) {
      selectedPlayer.value = 0;
    } else if (index == 1) {
      selectedPlayer.value = 1;
    } else if (index == 2) {
      selectedPlayer.value = 2;
    }
  }

  void makeGame() {
    final board = Board.init(selectedSize.value, windCondition.value);
    Player currentPlayer;
    if (selectedPlayer.value == 0) {
      int randomIndex = Random().nextInt(2);
      currentPlayer = randomIndex == 0 ? player1.value : player2.value;
    } else if (selectedPlayer.value == 1) {
      currentPlayer = player1.value;
    } else {
      currentPlayer = player2.value;
    }

    final game = Game(
      player1: player1.value,
      player2: player2.value,
      board: board,
      currentPlayer: currentPlayer,
      state: "In progress",
    );
    router.toGame(game);
  }
}
