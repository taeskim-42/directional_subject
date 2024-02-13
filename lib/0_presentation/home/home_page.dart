import 'package:directional_subject/0_presentation/core/app_design_system.dart';
import 'package:directional_subject/1_application/home/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
      side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(color: Colors.amber)),
      padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(20)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );

    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 10,
          right: 10,
          bottom: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                style: buttonStyle,
                onPressed: () => controller.router.toGameSettings(),
                child: Text(
                  "게임 설정하기",
                  style: AppTextTheme.buttonText,
                ),
              ),
              OutlinedButton(
                style: buttonStyle,
                onPressed: () => controller.router.toGameRecords(),
                child: Text(
                  "게임 기록보기",
                  style: AppTextTheme.buttonText,
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
