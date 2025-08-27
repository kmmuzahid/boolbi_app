import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/widgets/custom_appbar/user_custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/change_password_screen/controllers/change_password_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ChangePasswordScreenController(),
        builder: (controller) {
          return Scaffold(
              backgroundColor: AppColors.primaryBackgroud,
              appBar: customerCustomAppBar(title: "Change Password"),
              // appBar: const CustomAppBarAuth(),
              body: SingleChildScrollView(
                child: Container(
                  height: AppSize.size.height * 0.9,
                  width: AppSize.size.width,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryBackgroud,
                    // image: DecorationImage(
                    //     image: AssetImage(AssetsImagesPath.designBackground),
                    //     fit: BoxFit.fill),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSize.width(value: 20.0)),
                    child: Form(
                      key: controller.changePasswordKey,
                      child: Column(
                        children: [

                          const Gap(height: 10),
                        // AppImage(height: AppSize.size.height * 0.12, path: AssetsImagesPath.lockImage),
                        // const Gap(height: 20),
                        // const Padding(
                        //   padding: EdgeInsets.symmetric(horizontal: 10),
                        //   child: AppText(
                        //     data: "Change Password?",
                        //     color: AppColors.primary,
                        //     fontSize: 28,
                        //     fontWeight: FontWeight.w900,
                        //   ),
                        // ),
                        const Gap(height: 20),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          child: AppText(
                            data:
                                "Enter The Email Associated With Your Account and We'll Sent An Email With code To Reset Your Password ",
                            color: AppColors.primary,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Gap(height: 40),

                          AppInputWidgetTwo(
                            controller:
                                controller.oldPasswordTextEditingController,
                            hintText: "Old password",
                            filled: true,
                            isPassWord: true,
                            maxLines: 1,
                            fillColor: AppColors.deepWhte,
                            textInputAction: TextInputAction.done,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  AppSize.width(value: 10.0)),
                              borderSide: BorderSide.none,
                            ),
                            errBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  AppSize.width(value: 10.0)),
                              borderSide:
                                  const BorderSide(color: AppColors.error),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                          ),
                          const Gap(height: 20),
                          AppInputWidgetTwo(
                            controller:
                                controller.newPasswordTextEditingController,
                            hintText: "New password",
                            filled: true,
                            isPassWord: true,
                            maxLines: 1,
                            fillColor: AppColors.deepWhte,
                            textInputAction: TextInputAction.done,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  AppSize.width(value: 10.0)),
                              borderSide: BorderSide.none,
                            ),
                            errBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  AppSize.width(value: 10.0)),
                              borderSide:
                                  const BorderSide(color: AppColors.error),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                          ),
                          const Gap(height: 20),
                          AppInputWidgetTwo(
                            controller:
                                controller.confirmPasswordTextEditingController,
                            isPassWordSecondValidationController:
                                controller.newPasswordTextEditingController,
                            isPassWordSecondValidation: true,
                            hintText: "Re-type new password",
                            filled: true,
                            isPassWord: true,
                            maxLines: 1,
                            fillColor: AppColors.deepWhte,
                            textInputAction: TextInputAction.done,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  AppSize.width(value: 10.0)),
                              borderSide: BorderSide.none,
                            ),
                            errBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  AppSize.width(value: 10.0)),
                              borderSide:
                                  const BorderSide(color: AppColors.error),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                          ),
                          // const Gap(height: 10),
                          // const Row(
                          //   children: [
                          //     Padding(
                          //       padding: EdgeInsets.symmetric(horizontal: 2),
                          //       child: AppText(
                          //         data: "Both password must match",
                          //         fontWeight: FontWeight.w500,
                          //         color: AppColors.grey700,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          const Gap(height: 40),
                          Obx(
                            () => GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.changePasswordSuccessfulScreen);
                                // if (controller.isLoading.value == false) {
                                //   controller.clickChangePasswordButton();
                                // }
                              },
                              child: Container(
                                width: Get.width,
                                height: AppSize.width(value: 50.0),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(
                                        AppSize.width(value: 8))),
                                child: controller.isLoading.value
                                    ? const Center(
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                        ),
                                      )
                                    : const AppText(
                                        data: "Change Password",
                                        fontSize: 18,
                                        color: AppColors.grey50,
                                        fontWeight: FontWeight.w600,
                                      ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ));

         
        });
  }
}
