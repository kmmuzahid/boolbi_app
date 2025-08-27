import 'package:boolbi_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/auth_screen/reset_password_screen/controllers/reset_password_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ResetPasswordScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.grey50,
            appBar: AppBar(
              backgroundColor: AppColors.grey50,
              // centerTitle: true,
              title: const AppText(
                data: "Reset Password",
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(20),
              child: Obx(
                () => GestureDetector(
                  onTap: () {
                     Get.toNamed(
                                      AppRoutes.changePasswordSuccessfulScreen);
                    // if (controller.isLoading.value == false) {
                    //   controller.clickResetButton();
                    // }
                  },
                  child: Container(
                    width: Get.width,
                    height: AppSize.width(value: 50.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(AppSize.width(value: 8))),
                    child: controller.isLoading.value
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                        : const AppText(
                            data: "Update Password",
                            color: AppColors.grey50,
                            fontWeight: FontWeight.w500,
                          ),
                  ),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                width: Get.width,
                padding: EdgeInsets.symmetric(horizontal: AppSize.width(value: 20.0)),
                child: Form(
                  key: controller.resetPasswordKey,
                  child: Column(
                    children: [
                      const Gap(height: 20),
                      const AppText(
                        data: "This Password Must be Different Than before",
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey900,
                      ),
                      const Gap(height: 70),
                      const Row(
                        children: [
                          AppText(
                            data: "Password",
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey700,
                          ),
                        ],
                      ),
                      const Gap(height: 10),
                      AppInputWidgetTwo(
                        controller: controller.passwordTextEditingController,
                        hintText: "Create a Password",
                        filled: true,
                        isPassWord: true,
                        maxLines: 1,
                        fillColor: AppColors.deepWhte,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: AppColors.primary,
                        )),
                        textInputAction: TextInputAction.done,
                        contentPadding: EdgeInsets.symmetric(vertical: AppSize.width(value: 10), horizontal: AppSize.width(value: 20)),
                      ),
                      const Gap(height: 20),
                      const Row(
                        children: [
                          AppText(
                            data: "Confirm Password",
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey700,
                          ),
                        ],
                      ),
                      const Gap(height: 10),
                      AppInputWidgetTwo(
                        controller: controller.reEntryPasswordTextEditingController,
                        isPassWordSecondValidation: true,
                        isPassWordSecondValidationController: controller.passwordTextEditingController,
                        hintText: "Confirm Password",
                        filled: true,
                        isPassWord: true,
                        maxLines: 1,
                        fillColor: AppColors.deepWhte,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: AppColors.primary,
                        )),
                        textInputAction: TextInputAction.done,
                        contentPadding: EdgeInsets.symmetric(vertical: AppSize.width(value: 10), horizontal: AppSize.width(value: 20)),
                      ),
                      const Gap(height: 60),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
