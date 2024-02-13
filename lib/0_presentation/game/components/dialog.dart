import 'package:directional_subject/0_presentation/core/app_design_system.dart';
import 'package:directional_subject/1_application/core/routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showAlertDialog({
  required String titleText,
  required String middleText,
  required String buttonText,
  double buttonHeight = 42.0,
}) {
  const radius = 16.0;
  const dialogWidth = 328.0;
  final router = Get.find<IAppRouter>();
  Get.dialog(
    barrierDismissible: false,
    Dialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Container(
        width: dialogWidth,
        decoration: const BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(AppSpacing.base),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                titleText,
                style: AppTextTheme.title5.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.2,
                ),
              ),
              AppSpacing.vBase,
              Text(
                middleText,
                style: AppTextTheme.title1.copyWith(
                  color: Colors.white,
                  letterSpacing: -0.2,
                ),
              ),
              AppSpacing.vBase,
              ElevatedButton(
                child: Text(
                  buttonText,
                  style: AppTextTheme.title5.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
                onPressed: () {
                  router.toHome();
                },
              )
            ],
          ),
        ),
      ),
    ),
  );
}
