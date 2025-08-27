import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

adminRequireDialogBox() {
  Get.dialog(Dialog(
    backgroundColor: Colors.white,
    child: Padding(
      padding: EdgeInsets.all(
        AppSize.width(value: 20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Gap(height: 20),
          // const AppText(
          //   data: "LogOut",
          //   fontWeight: FontWeight.bold,
          //   fontSize: 20,
          //   color: Colors.white10,
          // ),
          // const Gap(height: 30),
          const AppText(
            data:
                "To Publish This Order, The Total Amount Of The Order Must Be Submitted To The Admin. Please Set Your Payment Method",
            textAlign: TextAlign.center,
            height: 1.5,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
          const Gap(height: 30),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Get.closeDialog();
                    // Get.offAllNamed(AppRoutes.signIn);
                  },
                  child: Container(
                    margin: EdgeInsets.all(AppSize.width(value: 5)),
                    padding: EdgeInsets.all(AppSize.width(value: 5)),
                    width: Get.width,
                    height: AppSize.height(value: 50),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primary),
                        color: AppColors.primary,
                        borderRadius:
                            BorderRadius.circular(AppSize.width(value: 8.0))),
                    child: const AppText(
                      data: "Continue",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
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
