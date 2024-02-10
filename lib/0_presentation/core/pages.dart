import 'package:directional_subject/0_presentation/game/game_page.dart';
import 'package:directional_subject/0_presentation/game/game_page_binding.dart';
import 'package:directional_subject/0_presentation/game_record/game_record_page.dart';
import 'package:directional_subject/0_presentation/game_record/game_record_page_binding.dart';
import 'package:directional_subject/0_presentation/game_settings/game_settings_page.dart';
import 'package:directional_subject/0_presentation/game_settings/game_settings_page_binding.dart';
import 'package:directional_subject/0_presentation/home/home_page.dart';
import 'package:directional_subject/0_presentation/home/home_page_binding.dart';
import 'package:get/get.dart';

List<GetPage> allPages() => [
      GetPage(
        name: "/",
        binding: HomePageBinding(),
        page: () => const HomePage(),
        transition: Transition.noTransition,
      ),
      GetPage(
        name: "/game",
        binding: GamePageBinding(),
        page: () => const GamePage(),
        transition: Transition.noTransition,
      ),
      // GetPage(
      //   name: "/records",
      //   binding: GameRecordPageBinding(),
      //   page: () => const GameRecordPage(),
      // transition: Transition.noTransition,
      // ),
      GetPage(
        name: "/settings",
        binding: GameSettingsPageBinding(),
        page: () => const GameSettingsPage(),
        transition: Transition.noTransition,
      ),
    ];
