import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

deleteAccountDialogBox() {
  Get.dialog(Dialog(
    backgroundColor: Colors.white,
    child: Padding(
      padding: EdgeInsets.all(
        AppSize.width(value: 20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Gap(height: 30),
          const AppText(
            data: "Are you sure you want to delete your account?",
            fontWeight: FontWeight.bold,
            fontSize: 20,
            textAlign: TextAlign.center,
            color: AppColors.primary,
          ),
          const Gap(height: 30),
          const AppText(
            data: "This Action is Permanent, And All Your Data Well Be Erased. If You're Sure ,Please Confirm Your Decision",
            textAlign: TextAlign.center,
            color: AppColors.black300,
            fontSize: 14,
            // height: 1.5,
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
                        borderRadius: BorderRadius.circular(AppSize.width(value: 8.0))),
                    child: const AppText(
                      data: "No",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                            Get.closeAllDialogs();
                    // Get.offAllNamed(AppRoutes.signIn);
                  },
                  child: Container(
                    margin: EdgeInsets.all(AppSize.width(value: 5)),
                    padding: EdgeInsets.all(AppSize.width(value: 5)),
                    width: Get.width,
                    height: AppSize.height(value: 50),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.error),
                        color: AppColors.error,
                        borderRadius: BorderRadius.circular(
                          AppSize.width(value: 8.0),
                        )),
                    child: const AppText(
                      data: "Yes",
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
