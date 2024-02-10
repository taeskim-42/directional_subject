import 'package:directional_subject/1_application/core/routers.dart';
import 'package:directional_subject/2_domain/board/board.dart';
import 'package:directional_subject/2_domain/game/game.dart';
import 'package:directional_subject/2_domain/player/player.dart';
import 'package:get/get.dart';

class GameSettingsPageController extends GetxController {
  final router = Get.find<IAppRouter>();

  // board settings
  final size = 3.obs;
  final windCondition = 3.obs;

  // player settings
  final player1 = Player.init()
      .copyWith(
        name: '1',
        mark: PlayerMark.cross,
        markColor: PlayerColor.blue,
      )
      .obs;
  final player2 = Player.init()
      .copyWith(
        name: '2',
        mark: PlayerMark.circle,
        markColor: PlayerColor.red,
      )
      .obs;

  // Game Settings
  final currentPlayer = Player.init().obs;

  void makeGame() {
    final board = Board.init(size.value, windCondition.value);
    final game = Game(
      player1: player1.value,
      player2: player2.value,
      board: board,
      currentPlayer: player1.value,
      state: GameState.inProgress,
    );

    router.toGame(game);
  }
}
