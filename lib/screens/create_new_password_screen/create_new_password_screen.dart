import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/screens/navigation_screen/widgets/custom_appbar_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/create_new_password_screen/controllers/create_new_password_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_three.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CreateNewPasswordScreenController(),
        builder: (controller) {
          return 

Scaffold(
              backgroundColor: AppColors.white,
              appBar: const CustomAppBarAuth(),
              body: SingleChildScrollView(
                child: Container(
                  height: AppSize.size.height * 0.9,
                  width: AppSize.size.width,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(AssetsImagesPath.designBackground),
                        fit: BoxFit.fill),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSize.width(value: 20.0)),
                    child:  Form(
                  key: controller.changePasswordKey,
                  child: Column(
                    children: [
                      const Gap(height: 30),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: AppText(
                          data: "Create New Password",
                          color: AppColors.primary,
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const Gap(height: 15),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: AppText(
                          data:
                              "Your new password must be different from previous passwords.",
                          color: AppColors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Gap(height: 20),
                      AppInputWidgetThree(
                        controller: controller.newPasswordTextEditingController,
                        // title: "New Password",
                        isPassWord: true,
                        minLines: 1,
                        maxLines: 1,
                        hintText: "New password",
                        fillColor: AppColors.deepWhte,
                        textInputAction: TextInputAction.next,
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(AppSize.width(value: 10.0)),
                          borderSide: BorderSide.none,
                        ),
                        errBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(AppSize.width(value: 10.0)),
                          borderSide: const BorderSide(color: AppColors.error),
                        ),
                      ),
                      AppInputWidgetThree(
                        controller:
                            controller.confirmPasswordTextEditingController,
                        secondController:
                            controller.newPasswordTextEditingController,
                        title: "Must be at last 8 characters.",
                        isPassWord: true,
                        minLines: 1,
                        maxLines: 1,
                        hintText: "Confirm password",
                        fillColor: AppColors.deepWhte,
                        textInputAction: TextInputAction.done,
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(AppSize.width(value: 10.0)),
                          borderSide: BorderSide.none,
                        ),
                        errBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(AppSize.width(value: 10.0)),
                          borderSide: const BorderSide(color: AppColors.error),
                        ),
                      ),
                      const Gap(height: 10),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            child: AppText(
                              data: "Both password must match",
                              fontWeight: FontWeight.w500,
                              color: AppColors.grey700,
                            ),
                          ),
                        ],
                      ),
                      const Gap(height: 40),
                      GestureDetector(
                        onTap: () {
                          controller.clickChangePasswordButton();
                        },
                        child: Container(
                          width: Get.width,
                          height: AppSize.width(value: 50.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(
                                  AppSize.width(value: 8))),
                          child: const AppText(
                            data: "Confirm",
                            fontSize: 18,
                            color: AppColors.grey50,
                            fontWeight: FontWeight.w600,
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
