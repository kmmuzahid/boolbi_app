import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

deliveryNoticeDialog() {
  Get.dialog(Dialog(
    backgroundColor: AppColors.white,
    child: Padding(
      padding: EdgeInsets.all(
        AppSize.width(value: 20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Gap(height: 50),
          // const AppText(
          //   data: "LogOut",
          //   fontWeight: FontWeight.bold,
          //   fontSize: 20,
          //   color: AppColors.primary,
          // ),
          // const Gap(height: 30),
          const AppText(
            data:
                "keep it mind that we have until 20 April 2025, 02:00 pm to approve this delivery or request or revision after this date, the order will b finalized and market as complete ",
            textAlign: TextAlign.center,
            height: 1.5,
          ),
          const Gap(height: 50),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                      // deliveryNoticeDialog();
                      // Get.toNamed(AppRoutes.welcomePage);
                    },
                    child: Container(
                      width: Get.width,
                      height: AppSize.width(value: 50.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(
                          AppSize.width(value: 8),
                        ),
                      ),
                      child:
                          // controller.isLoading.value
                          //     ? const Center(
                          //         child: CircularProgressIndicator(
                          //           color: Colors.white,
                          //         ),
                          //       )
                          //     :
                          const AppText(
                        data: "Next",
                        fontSize: 18,
                        color: AppColors.grey50,
                        fontWeight: FontWeight.w900,
                      ),
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
