import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:directional_subject/0_presentation/core/app_widget.dart';
import 'package:directional_subject/3_infrastructure/services/configure_di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configure();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );

  return runApp(
    const AppWidget(),
  );
}
