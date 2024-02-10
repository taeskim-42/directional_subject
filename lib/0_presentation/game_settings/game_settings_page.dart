import 'package:directional_subject/1_application/game_settings/game_settings_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class GameSettingsPage extends GetView<GameSettingsPageController> {
  const GameSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => controller.makeGame(),
          child: const Text("게임 시작하기"),
        ),
      ],
    );
  }
}
