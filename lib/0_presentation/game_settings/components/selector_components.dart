import 'package:directional_subject/0_presentation/core/app_design_system.dart';
import 'package:directional_subject/2_domain/player/player.dart';
import 'package:flutter/material.dart';

class PlayerMarkSelector extends StatelessWidget {
  final Player cPlayer;
  final Player tPlayer;
  final Function(Player, Mark) updatePlayerMark;

  const PlayerMarkSelector({
    Key? key,
    required this.updatePlayerMark,
    required this.cPlayer,
    required this.tPlayer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ToggleButtons(
          onPressed: (int index) {
            PlayerMark selectedMark = PlayerMark.values
                .sublist(0, PlayerMark.values.length - 1)[index];
            if (selectedMark != tPlayer.mark.mark) {
              updatePlayerMark(cPlayer,
                  Mark(mark: selectedMark, markColor: cPlayer.mark.markColor));
            }
          },
          isSelected: PlayerMark.values
              .sublist(0, PlayerMark.values.length - 1)
              .map((option) => cPlayer.mark.mark == option)
              .toList(),
          children: PlayerMark.values
              .sublist(0, PlayerMark.values.length - 1)
              .map((option) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Text(
                    option.toString().split('.').last,
                    style: const TextStyle(color: Colors.black),
                  ),
                  Text(option.symbol),
                ],
              ),
            );
          }).toList(),
        ),
        AppSpacing.hLarge,
        ToggleButtons(
          fillColor: cPlayer.mark.markColor.color,
          onPressed: (int index) {
            PlayerColor selectedMarkColor = PlayerColor.values[index];
            if (selectedMarkColor != tPlayer.mark.markColor) {
              updatePlayerMark(cPlayer,
                  Mark(mark: cPlayer.mark.mark, markColor: selectedMarkColor));
            }
          },
          isSelected: PlayerColor.values
              .map((option) => cPlayer.mark.markColor == option)
              .toList(),
          children: PlayerColor.values.map((option) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                option.toString().split('.').last,
                style: const TextStyle(color: Colors.black),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class GameSizeSelector extends StatelessWidget {
  final Function(int) updateGameSize;
  final List<int> gameSizeOptions;
  final int selectedSize;

  const GameSizeSelector({
    Key? key,
    required this.updateGameSize,
    required this.gameSizeOptions,
    required this.selectedSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected: gameSizeOptions.map((size) => size == selectedSize).toList(),
      onPressed: (index) {
        updateGameSize(gameSizeOptions[index]);
      },
      children: gameSizeOptions
          .map((size) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("$size x $size"),
              ))
          .toList(),
    );
  }
}
