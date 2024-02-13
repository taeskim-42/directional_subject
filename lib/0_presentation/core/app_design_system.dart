import 'package:flutter/material.dart';

extension AppTextTheme on TextTheme {
  static TextStyle get buttonText => const TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.black,
        fontSize: 24,
      );
  static TextStyle get title1 => const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 32,
      );
  static TextStyle get title5 => title1.copyWith(
        fontSize: 20,
        letterSpacing: -0.2,
      );
  static TextStyle get caption => const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 13,
        letterSpacing: 0.25,
      );

  static TextStyle get paragraph1 => const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 19,
        letterSpacing: -0.2,
      );
  static TextStyle ableLabelStyle = AppTextTheme.paragraph1.copyWith(
    fontWeight: FontWeight.bold,
    letterSpacing: 0.0,
    color: AppColorScheme.background0,
  );

  static TextStyle disableLabelStyle = AppTextTheme.paragraph1.copyWith(
    fontWeight: FontWeight.bold,
    letterSpacing: 0.0,
    color: AppColorScheme.background0,
  );
}

class AppSpacing {
  /// 2
  static double xxTiny = 2;

  /// 4
  static double xTiny = 4;

  /// 8
  static double tiny = 8;

  /// 12
  static double xSmall = 12;

  /// 16
  static double small = 16;

  /// 20
  static double xBase = 20;

  /// 24
  static double base = 24;

  /// 32
  static double medium = 32;

  /// 48
  static double large = 48;

  /// 64
  static double xLarge = 64;

  /// 2
  static SizedBox get hXXTiny => const SizedBox(width: 2);

  /// 4
  static SizedBox get hXTiny => const SizedBox(width: 4);

  /// 8
  static SizedBox get hTiny => const SizedBox(width: 8);

  /// 12
  static SizedBox get hXSmall => const SizedBox(width: 12);

  /// 16
  static SizedBox get hSmall => const SizedBox(width: 16);

  /// 20
  static SizedBox get hXBase => const SizedBox(width: 20);

  /// 24
  static SizedBox get hBase => const SizedBox(width: 24);

  /// 32
  static SizedBox get hMedium => const SizedBox(width: 32);

  /// 48
  static SizedBox get hLarge => const SizedBox(width: 48);

  /// 64
  static SizedBox get hXLarge => const SizedBox(width: 64);

  /// 2
  static SizedBox get vXXTiny => const SizedBox(height: 2);

  /// 4
  static SizedBox get vXTiny => const SizedBox(height: 4);

  /// 8
  static SizedBox get vTiny => const SizedBox(height: 8);

  /// 12
  static SizedBox get vXSmall => const SizedBox(height: 12);

  /// 16
  static SizedBox get vSmall => const SizedBox(height: 16);

  /// 20
  static SizedBox get vXBase => const SizedBox(height: 20);

  /// 24
  static SizedBox get vBase => const SizedBox(height: 24);

  /// 32
  static SizedBox get vMedium => const SizedBox(height: 32);

  /// 48
  static SizedBox get vLarge => const SizedBox(height: 48);

  /// 64
  static SizedBox get vXLarge => const SizedBox(height: 64);
}

extension AppColorScheme on ColorScheme {
  // Oli Brand Color
  static Color get brand50 => const Color(0xFFFFEBEB);
  static Color get brand100 => const Color(0xFFFFC8C8);
  static Color get brand200 => const Color(0xFFFF9798);
  static Color get brand300 => const Color(0xFFFF7273);
  static Color get brand500 => const Color(0xFFFF4F51);

  // Oli Background Color
  static Color get background0 => const Color(0xFFFFFFFF);
  static Color get background50 => const Color(0xFFEEEEEE);
  static Color get background100 => const Color(0xFFEEEEEE);
  static Color get background200 => const Color(0xFFDADADA);
  static Color get background300 => const Color(0xFFB8B8B8);
  static Color get background400 => const Color(0xFF868686);
  static Color get background500 => const Color(0xFF626262);
  static Color get background600 => const Color(0xFF464646);
  static Color get background700 => const Color(0xFF2E2E2E);
  static Color get background800 => const Color(0xFF1D1D1D);
  static Color get background900 => const Color(0xFF141414);

  // Oli Error Color
  static Color get error => const Color(0xFFFF1D00);
}
