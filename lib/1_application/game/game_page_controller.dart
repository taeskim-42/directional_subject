import 'package:directional_subject/0_presentation/game/components/dialog.dart';
import 'package:directional_subject/1_application/core/routers.dart';
import 'package:directional_subject/2_domain/board/board.dart';
import 'package:directional_subject/2_domain/game/game.dart';
import 'package:directional_subject/2_domain/player/player.dart';
import 'package:get/get.dart';

class GamePageController extends GetxController {
  final Game game;

  GamePageController(this.game);
  final router = Get.find<IAppRouter>();
  final currentGame = Game.init().obs;
  final player1Undo = 3.obs;
  final player2Undo = 3.obs;
  final currentRow = 0.obs;
  final currentCol = 0.obs;
  final isBoardEmpty = true.obs;
  final undoClicked = false.obs;

  void playGame(int row, int col) {
    currentRow.value = row;
    currentCol.value = col;
    var board = placeMark(row, col, currentGame.value.currentPlayer.mark);
    var switchedPlayer = switchPlayer();
    currentGame.value = currentGame.value.copyWith(
      currentPlayer: switchedPlayer,
      board: board,
    );

    isBoardEmpty.value = currentGame.value.board.cells
        .every((row) => row.every((cell) => cell.mark == PlayerMark.empty));
  }

  Board placeMark(int row, int col, Mark mark) {
    Board board;
    board = currentGame.value.board.placeMark(row, col, mark);
    if (checkWin(board, row, col)) {
      showAlertDialog(
          titleText: "${currentGame.value.currentPlayer.name}의 승리를 축하합니다.",
          middleText: "현재의 기록은 모두 저장됩니다.",
          buttonText: "홈으로 돌아가기");
    }
    undoClicked.value = false;
    return board;
  }

  bool checkWin(Board board, int row, int col) {
    return board.checkWin(currentGame.value.currentPlayer.mark);
  }

  Player switchPlayer() =>
      (currentGame.value.currentPlayer.name == currentGame.value.player1.name)
          ? currentGame.value.player2
          : currentGame.value.player1;

  void handleUndo(Player player) {
    player.name == "Player1" ? player1Undo.value -= 1 : player2Undo.value -= 1;
    var board = placeMark(currentRow.value, currentCol.value,
        Mark(mark: PlayerMark.empty, markColor: PlayerColor.black));
    var switchedPlayer = switchPlayer();
    currentGame.value = currentGame.value.copyWith(
      currentPlayer: switchedPlayer,
      board: board,
    );
    isBoardEmpty.value = currentGame.value.board.cells
        .every((row) => row.every((cell) => cell.mark == PlayerMark.empty));
    undoClicked.value = true;
  }

  @override
  void onInit() {
    currentGame.value = game;
    super.onInit();
  }
}
