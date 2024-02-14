import 'dart:convert';

import 'package:directional_subject/2_domain/game/game.dart';
import 'package:directional_subject/2_domain/game_record/game_record.dart';
import 'package:directional_subject/2_domain/game_record/i_game_record.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GameRecordRepository extends IGameRecordRepository {
  @override
  Future<List<GameRecord>?> getGameRecords() async {
    final prefs = await SharedPreferences.getInstance();
    final String? gameRecordsJson = prefs.getString('gameRecords');

    if (gameRecordsJson == null) return null;

    final List<dynamic> gameRecordMapList = json.decode(gameRecordsJson);
    final List<GameRecord> gameRecords = gameRecordMapList.map((gameRecordMap) {
      final convertedJson = json.decode(gameRecordMap) as Map<String, dynamic>;

      return GameRecord.fromJson(convertedJson);
    }).toList();

    return gameRecords;
  }

  @override
  Future<void> saveGameRecord(Game game) async {
    final prefs = await SharedPreferences.getInstance();
    final List<GameRecord> gameRecordList = await getGameRecords() ?? [];

    GameRecord gameRecord = GameRecord(
      endTime: DateTime.now(),
      player1: game.player1.name,
      player2: game.player2.name,
      board: game.board,
      result: game.state,
    );

    // 새로운 게임 레코드를 목록에 추가
    gameRecordList.add(gameRecord);

    // 게임 레코드 목록을 JSON 문자열 리스트로 변환
    List<String> jsonStringList =
        gameRecordList.map((record) => json.encode(record.toJson())).toList();

    // JSON 문자열 리스트를 SharedPreferences에 저장
    await prefs.setString('gameRecords', json.encode(jsonStringList));
  }
}
