import 'package:boolbi_app/const/storage/get_storage.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

logOutDialog() {
  Get.dialog(Dialog(
    backgroundColor: AppColors.white,
    child: Padding(
      padding: EdgeInsets.all(
        AppSize.width(value: 20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Gap(height: 10),
          const AppText(
            data: "LogOut",
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColors.primary,
          ),
          const Gap(height: 30),
          const AppText(
            data:
                "Are you sure you want to log out? You'll need to login again to use the app.",
            textAlign: TextAlign.center,
            height: 1.5,
          ),
          const Gap(height: 30),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Get.closeAllDialogs();
                  },
                  child: Container(
                    margin: EdgeInsets.all(AppSize.width(value: 5)),
                    padding: EdgeInsets.all(AppSize.width(value: 5)),
                    width: Get.width,
                    height: AppSize.height(value: 50),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.primary,
                        ),
                        color: AppColors.white,
                        borderRadius:
                            BorderRadius.circular(AppSize.width(value: 8.0))),
                    child: const AppText(
                      data: "Cancel",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    AppStorage().removeValue(StorageKey.loginValue);

                    // Get.close();
                    Get.offAllNamed(AppRoutes.chooseAuthScreen);
                  },
                  child: Container(
                    margin: EdgeInsets.all(AppSize.width(value: 5)),
                    padding: EdgeInsets.all(AppSize.width(value: 5)),
                    width: Get.width,
                    height: AppSize.height(value: 50),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.primary,
                        ),
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(
                          AppSize.width(value: 8.0),
                        )),
                    child: const AppText(
                      data: "LogOut",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Gap(height: 20),
        ],
      ),
    ),
  ));
}
