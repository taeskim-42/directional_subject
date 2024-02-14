import 'package:directional_subject/0_presentation/core/app_design_system.dart';
import 'package:directional_subject/0_presentation/game_settings/components/selector_components.dart';
import 'package:directional_subject/1_application/game_settings/game_settings_page_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameSettingsPage extends GetView<GameSettingsPageController> {
  const GameSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Material(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("1.Game size 설정해주세요."),
              AppSpacing.vXTiny,
              GameSizeSelector(
                updateGameSize: controller.updateGameSize,
                gameSizeOptions: controller.gameSize,
                selectedSize: controller.selectedSize.value,
              ),
              AppSpacing.vXTiny,
              const Text("2. 6 x 6의 사이즈는 아래에 입력해주세요.(20이하 추천)"),
              AppSpacing.vXTiny,
              SizedBox(
                width: 300,
                height: 50,
                child: CupertinoTextField(
                  placeholder: '6이상의 사이즈 입력해주세요.',
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  onChanged: (value) =>
                      controller.selectedSize.value = int.parse(value),
                ),
              ),
              AppSpacing.vXSmall,
              const Text("3. 승리조건을 설정해주세요."),
              AppSpacing.vXTiny,
              SizedBox(
                width: 300,
                height: 50,
                child: CupertinoTextField(
                  placeholder:
                      '3 ~ ${controller.selectedSize.value}의 값을 입력해주세요.',
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  onChanged: (value) =>
                      controller.windCondition.value = int.parse(value),
                ),
              ),
              AppSpacing.vXSmall,
              const Text(
                  "4. Player1 mark 색상 및 모양을 선택해주세요.(상대가 선택한 mark와 색상은 선택할 수 없어요.)"),
              AppSpacing.vXTiny,
              PlayerMarkSelector(
                cPlayer: controller.player1.value,
                tPlayer: controller.player2.value,
                updatePlayerMark: controller.updatePlayerMark,
              ),
              AppSpacing.vXSmall,
              const Text(
                  "5. Player2 mark 색상 및 모양을 선택해주세요.(상대가 선택한 mark와 색상은 선택할 수 없어요.)"),
              AppSpacing.vXTiny,
              PlayerMarkSelector(
                cPlayer: controller.player2.value,
                tPlayer: controller.player1.value,
                updatePlayerMark: controller.updatePlayerMark,
              ),
              AppSpacing.vXSmall,
              const Text("6. 누가 먼저 시작할지 정해주세요."),
              AppSpacing.vXTiny,
              ToggleButtons(
                onPressed: (index) => controller.switchPlayer(index),
                isSelected: controller.players
                    .map((option) =>
                        controller.selectedPlayer.value ==
                        (controller.players.indexOf(option)))
                    .toList(),
                children: controller.players
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(e),
                        ))
                    .toList(),
              ),
              AppSpacing.vLarge,
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () => controller.makeGame(),
                  child: const Text("게임 시작하기"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
