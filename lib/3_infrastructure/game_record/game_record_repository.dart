import 'package:directional_subject/2_domain/game/game.dart';
import 'package:directional_subject/2_domain/game_record/game_record.dart';
import 'package:directional_subject/2_domain/game_record/i_game_record.dart';

class GameRecordRepository extends IGameRecordRepository {
  @override
  Future<List<Game>?> getGameRecords() {
    // TODO: implement getGameRecords
    throw UnimplementedError();
  }

  @override
  Future<void> saveGameRecord(GameRecord gameRecord, Game game) {
    // TODO: implement saveGameRecord
    throw UnimplementedError();
  }
  // @override
  // Future<List<Game>?> getGames() {
  //   // TODO: implement getGames
  //   throw UnimplementedError();
  // }

  // @override
  // Future<void> saveGameRecord(GameRecord game) async {
  //   // final prefs = await SharedPreferences.getInstance();
  //   final gamesList = await getGames() ?? [];
  //   // gamesList.add(game);
  //   // final gamesJson =
  //   //     jsonEncode(gamesList.map((game) => game.toJson()).toList());
  //   // await prefs.setString('games', gamesJson);
  // }
}
