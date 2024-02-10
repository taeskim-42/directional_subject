import 'package:directional_subject/1_application/home/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Image(image: ),
        const Text("Image가 들어갈 자리"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
              onPressed: () => controller.router.toGameSettings(),
              child: const Text("게임 설정하기"),
            ),
            OutlinedButton(
              onPressed: () => controller.router.toGameRecords(),
              child: const Text("게임 기록보기"),
            )
          ],
        )
      ],
    ));
  }
}
