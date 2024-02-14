import 'package:directional_subject/2_domain/game/game.dart';
import 'package:directional_subject/2_domain/game_record/game_record.dart';

abstract class IGameRecordRepository {
  Future<void> saveGameRecord(Game game);
  Future<List<GameRecord>?> getGameRecords();
}
