import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/customer_contact_support_screen/controllers/customer_contact_support_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/custom_appbar/user_custom_appbar.dart';
import 'package:boolbi_app/widgets/log_print/app_log.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomerContactSupportScreen extends StatelessWidget {
  const CustomerContactSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomerContactSupportScreenController>(
      init: CustomerContactSupportScreenController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.primaryBackgroud,
          appBar: customerCustomAppBar(title: "Contact Support"),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const Gap(height: 20),
                    // System Problem Container
                    GestureDetector(
                      onTap: () {
                        controller.selectProblem('System Problem');
                      },
                      child: Container(
                        width: Get.width,
                        height: AppSize.width(value: 40.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: controller.selectedProblem.value == 'System Problem'
                              ? AppColors.primary
                              : AppColors.white, // Color change based on selection
                          borderRadius: BorderRadius.circular(
                            AppSize.width(value: 8),
                          ),
                        ),
                        child: AppText(
                          data: "System Problem",
                          fontSize: 18,
                          color: controller.selectedProblem.value == 'System Problem'
                              ? AppColors.white
                              : AppColors.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Gap(height: 10),
                    // Customer Problem Container
                    GestureDetector(
                      onTap: () {
                        controller.selectProblem('Customer Problem');
                      },
                      child: Container(
                        width: Get.width,
                        height: AppSize.width(value: 40.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: controller.selectedProblem.value == 'Customer Problem'
                              ? AppColors.primary
                              : AppColors.white,
                          borderRadius: BorderRadius.circular(
                            AppSize.width(value: 8),
                          ),
                        ),
                        child: AppText(
                          data: "Customer Problem",
                          fontSize: 18,
                          color: controller.selectedProblem.value == 'Customer Problem'
                              ? AppColors.white
                              : AppColors.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Gap(height: 10),
                    // Provider Problem Container
                    GestureDetector(
                      onTap: () {
                        controller.selectProblem('Provider Problem');
                      },
                      child: Container(
                        width: Get.width,
                        height: AppSize.width(value: 40.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: controller.selectedProblem.value == 'Provider Problem'
                              ? AppColors.primary
                              : AppColors.white,
                          borderRadius: BorderRadius.circular(
                            AppSize.width(value: 8),
                          ),
                        ),
                        child: AppText(
                          data: "Provider Problem",
                          fontSize: 18,
                          color: controller.selectedProblem.value == 'Provider Problem'
                              ? AppColors.white
                              : AppColors.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Gap(height: 10),
                    // Other Problem Container
                    GestureDetector(
                      onTap: () {
                        controller.selectProblem('Other Problem');
                      },
                      child: Container(
                        width: Get.width,
                        height: AppSize.width(value: 40.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: controller.selectedProblem.value == 'Other Problem'
                              ? AppColors.primary
                              : AppColors.white,
                          borderRadius: BorderRadius.circular(
                            AppSize.width(value: 8),
                          ),
                        ),
                        child: AppText(
                          data: "Other Problem",
                          fontSize: 18,
                          color: controller.selectedProblem.value == 'Other Problem'
                              ? AppColors.white
                              : AppColors.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: GestureDetector(
                  onTap: () {
                    appLog("Value Is : ${controller.selectedProblem.value}");
                    Get.toNamed(AppRoutes.conversationScreen);
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
                    child: const AppText(
                      data: "Continue",
                      fontSize: 18,
                      color: AppColors.grey50,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}