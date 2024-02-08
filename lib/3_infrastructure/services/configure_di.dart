import 'package:dartz/dartz.dart';
import 'package:get/instance_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Unit> configure() async {
  final pref = await SharedPreferences.getInstance();
  Get.put<SharedPreferences>(pref);

  return unit;
}
