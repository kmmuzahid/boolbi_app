import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

deliveryRequestCcceptedReviewDialog() {
  Get.dialog(
      barrierDismissible: false,
      Dialog(
        insetPadding: const EdgeInsets.all(20),
        backgroundColor: AppColors.white,
        child: Padding(
          padding: EdgeInsets.all(
            AppSize.width(value: 20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Gap(height: 50),
              const AppText(
                data: "Give Feedback",
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.primary,
                textAlign: TextAlign.center,
              ),
              const Gap(height: 30),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RatingBar.builder(
                      tapOnlyMode: false,
                      updateOnDrag: false,
                      initialRating: 3,
                      // initialRating: controller.,
                      ignoreGestures: false,
                      minRating: 1,
                      direction: Axis.horizontal,
                      // allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.zero,
                      itemSize: AppSize.width(value: 40.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: AppColors.primary,
                      ),
                      onRatingUpdate: (rating) {
                        // print(rating);
                        // controller.rate.value = rating;
                      },
                    ),
                  ],
                ),
              ),
              const Gap(height: 30),
              const AppText(
                data: "How Do You Fell About This Service?",
                textAlign: TextAlign.center,
                height: 1.5,
              ),
              const Gap(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AppInputWidgetTwo(
                    // controller: controller.emailTextEditingController,
                    hintText: "Write here..",
                    cursorColor: AppColors.primary,
                    minLines: 3,
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: AppColors.primary,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    filled: true,
                    isEmail: true,
                    fillColor: AppColors.deepWhte,
                    textInputAction: TextInputAction.newline,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                  ),
                ),
              ),
              const Gap(height: 50),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () {
                          Get.closeAllDialogs();
                          // deliveryNoticeDialog();
                          // Get.toNamed(AppRoutes.welcomePage);
                        },
                        child: Container(
                          width: Get.width,
                          height: AppSize.width(value: 50.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(
                                AppSize.width(value: 8),
                              ),
                              border: Border.all(color: AppColors.primary)),
                          child:
                              // controller.isLoading.value
                              //     ? const Center(
                              //         child: CircularProgressIndicator(
                              //           color: Colors.white,
                              //         ),
                              //       )
                              //     :
                              const AppText(
                            data: "Skip",
                            fontSize: 18,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () {
                          Get.closeAllDialogs();
                          // deliveryNoticeDialog();
                          // Get.toNamed(AppRoutes.welcomePage);
                        },
                        child: Container(
                          width: Get.width,
                          height: AppSize.width(value: 50.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
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
                            data: "Submit",
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

class CustomerDeliveryRequestScreenController {}
