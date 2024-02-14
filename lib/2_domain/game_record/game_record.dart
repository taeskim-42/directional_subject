import 'package:directional_subject/2_domain/board/board.dart';

class GameRecord {
  final DateTime endTime;
  final String player1;
  final String player2;
  final Board board;
  final String result;

  GameRecord({
    required this.endTime,
    required this.player1,
    required this.player2,
    required this.board,
    required this.result,
  });

  factory GameRecord.fromJson(Map<String, dynamic> json) {
    final jsonBoard = json["board"];
    final convertedBoard = Board.fromJson(jsonBoard as Map<String, dynamic>);
    return GameRecord(
        endTime: DateTime.parse(json["endTime"]),
        player1: json["player1"] as String,
        player2: json["player2"] as String,
        board: convertedBoard,
        result: json["result"] as String);
  }

  Map<String, dynamic> toJson() => {
        "endTime": endTime.toIso8601String(),
        "player1": player1,
        "player2": player2,
        "board": board,
        "result": result,
      };
}
