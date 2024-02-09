import 'package:directional_subject/2_domain/game/game.dart';
import 'package:get/get.dart';

abstract class IAppRouter {
  void toHome();
  void back<T>({T? result, bool closeOverlay = true});
  void toGameSettings();
  void toGame<T>(Game game);
  void toGameRecords();
}

class AppRouter extends IAppRouter {
  static AppRouter? _AppRouter;
  static AppRouter get instance {
    _AppRouter ??= AppRouter._();
    return _AppRouter!;
  }

  AppRouter._();

  @override
  void back<T>({T? result, bool closeOverlay = true}) {
    return Get.back<T>(result: result, closeOverlays: closeOverlay);
  }

  @override
  void toHome() {
    Get.offAllNamed("/");
  }

  @override
  void toGameRecords() {
    Get.offAllNamed("/records");
  }

  @override
  void toGameSettings() {
    Get.offAllNamed("/settings");
  }

  @override
  void toGame<T>(Game game) {
    Get.offAllNamed("/game", arguments: game);
  }
}
