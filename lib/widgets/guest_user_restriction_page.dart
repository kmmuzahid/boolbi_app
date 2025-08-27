// ignore_for_file: non_constant_identifier_names

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/enum_types/guest_user_type.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

// Widget GuestModeRestrictionWidget() {
//   return Center(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         AppText(
//           data: "Can't Access This",
//           fontSize: 25,
//         ),
//         AppText(data: "your are the guest mode"),
//       ],
//     ),
//   );
// }

GuestModeRestrictionWidget({bool barrierDismissible = true, bool isBack = false}) {
  if (isGuest == IsUserType.guest) {
    Get.dialog(
        barrierColor: AppColors.primaryWithOpacityW6, // Semi-transparent red color
        barrierDismissible: barrierDismissible, // Allow dismissing the dialog by tapping outside
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: AlertDialog(
            backgroundColor: AppColors.deepWhte,
            content: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {
                              if (isBack) {
                                Get.back();
                              } else {
                                Get.closeAllDialogs();
                              }
                            },
                            child: Icon(
                              Icons.cancel,
                              size: AppSize.size.height * 0.040,
                              color: AppColors.primary,
                            ))
                      ],
                    ),
                    AppImage(
                      path: AssetsImagesPath.errorImage2,
                      height: AppSize.size.height * 0.20,
                    ),
                    SizedBox(
                      height: AppSize.size.height * 0.010,
                    ),
                    const AppText(
                      data: "⚠️ Oppss ⚠️",
                      textAlign: TextAlign.center,
                      fontFamily: 'Manrope',
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                               color: AppColors.primary,
                    ),
                    SizedBox(
                      height: AppSize.size.height * 0.010,
                    ),
                    const AppText(  
                      data: "You are in Guest Mode",
                      // maxLine: 3,
                      textAlign: TextAlign.center,
                      fontFamily: 'Manrope', fontSize: 20, fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                    ),
                    SizedBox(
                      height: AppSize.size.height * 0.05,
                    ),
                    AppText(
                      data: "To Enjoy The Full Functionality Of The App Create Account To Continue",
                      textAlign: TextAlign.center,
                      fontFamily: 'Manrope',
                      fontSize: 16.0,
                      color: AppColors.primaryWithOpacityW5,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      height: AppSize.size.height * 0.020,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: AppSize.height(value: 20)),
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.signIn);
                        },
                        child: Container(
                          width: Get.width,
                          height: AppSize.width(value: 45.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(AppSize.width(value: 8))),
                          child: const AppText(
                            data: "Log In",
                            fontSize: 18,
                            color: AppColors.grey50,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  } else {
    return null;
  }
}
