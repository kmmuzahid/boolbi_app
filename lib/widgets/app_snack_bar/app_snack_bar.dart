import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AppSnackBar {
  // >>>>>>>>>>>>>>>>>>>>>> when show message bottom  <<<<<<<<<<<<<<<<<<<<<<

  // >>>>>>>>>>>>>>>>>>>>>> error message snackbar  <<<<<<<<<<<<<<<<<<<<<<
  static error(String parameterValue) {
    Get.showSnackbar(
      GetSnackBar(
        backgroundColor: AppColors.validationError,
        animationDuration: const Duration(seconds: 2),
        duration: const Duration(seconds: 3),
        messageText: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppText(
              data: "Error!",
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
            AppText(
              data: parameterValue,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  // >>>>>>>>>>>>>>>>>>>>>> success message <<<<<<<<<<<<<<<<<<<<<<

  static success(String parameterValue) {
    Get.showSnackbar(
      GetSnackBar(
        backgroundColor: Colors.green,
        animationDuration: const Duration(seconds: 2),
        duration: const Duration(seconds: 3),
        messageText: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppText(
              data: "Success!",
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
            AppText(
              data: parameterValue,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  // >>>>>>>>>>>>>>>>>>>>>> message  <<<<<<<<<<<<<<<<<<<<<<
  // >>>>>>>>>>>>>>>>>>>>>> only show message <<<<<<<<<<<<<<<<<<<<<<

  static message(String parameterValue) {
    Get.showSnackbar(
      GetSnackBar(
        backgroundColor: Colors.white70,
        animationDuration: const Duration(seconds: 2),
        duration: const Duration(seconds: 3),
        messageText: AppText(
          data: parameterValue,
          color: Colors.white38,
          fontSize: 16,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.w400,
        ),
        borderRadius: AppSize.width(value: 20.0),
        padding: EdgeInsets.all(AppSize.width(value: 10.0)),
        margin: EdgeInsets.symmetric(horizontal: AppSize.width(value: 40.0), vertical: AppSize.width(value: 30)),
      ),
    );
  }
}
