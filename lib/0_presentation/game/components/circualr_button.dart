import 'package:directional_subject/0_presentation/core/app_design_system.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool condition;

  const CircularButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.condition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: condition ? () {} : onPressed,
      child: Container(
        width: 50, // 원형 버튼의 지름 설정
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: condition
              ? AppColorScheme.background700
              : AppColorScheme.brand500,
        ),
        child: Center(
          child: Text(
            text,
            style: condition
                ? AppTextTheme.disableLabelStyle
                : AppTextTheme.ableLabelStyle,
          ),
        ),
      ),
    );
  }
}
