import 'package:directional_subject/1_application/core/routers.dart';
import 'package:directional_subject/2_domain/board/board.dart';
import 'package:directional_subject/2_domain/game/game.dart';
import 'package:directional_subject/2_domain/player/player.dart';
import 'package:get/get.dart';

class GamePageController extends GetxController {
  final router = Get.find<IAppRouter>();
  // final Game game;

  // GamePageController(this.game);

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

  final currentGame = Game.init().obs;

  void playGame(int row, int col) {
    currentGame.value = currentGame.value.copyWith(
      currentPlayer: switchPlayer(),
      board: placeMark(row, col),
    );
  }

  Board placeMark(int row, int col) {
    Board board;
    board = currentGame.value.board
        .placeMark(row, col, currentGame.value.currentPlayer.mark);
    print(checkWin(board, row, col));
    return board;
  }

  bool checkWin(Board board, int row, int col) {
    return board.checkWin(currentGame.value.currentPlayer.mark);
  }

  Player switchPlayer() =>
      (currentGame.value.currentPlayer == currentGame.value.player1)
          ? currentGame.value.player2
          : currentGame.value.player1;

  @override
  void onInit() {
    final board = Board.init(size.value, windCondition.value);
    final game = Game(
      player1: player1.value,
      player2: player2.value,
      board: board,
      currentPlayer: player1.value,
      state: GameState.inProgress,
    );
    currentGame.value = game;
    super.onInit();
  }
}
