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
      ),
      GetPage(
        name: "/game",
        binding: GamePageBinding(),
        page: () => const GamePage(),
      ),
      GetPage(
        name: "/gameRecord",
        binding: GameRecordPageBinding(),
        page: () => const GameRecordPage(),
      ),
      GetPage(
        name: "/gameSettings",
        binding: GameSettingsPageBinding(),
        page: () => const GameSettingsPage(),
      ),
    ];
