import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/auth_screen/for_got_screen/controllers/for_got_screen_controller.dart';
import 'package:boolbi_app/screens/navigation_screen/widgets/custom_appbar_auth.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForGotScreen extends StatelessWidget {
  const ForGotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ForGotScreenController(),
      builder: (controller) {
        return Scaffold(
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
                  child: Form(
                    key: controller.forGotScreenKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Gap(height: 30),
                        // AppImage(height: AppSize.size.height * 0.12, path: AssetsImagesPath.lockImage),
                        // const Gap(height: 20),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: AppText(
                            data: "Forgot Password?",
                            color: AppColors.primary,
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
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
                        const Row(
                          children: [
                            AppText(
                              data: "Email",
                              fontSize: 16,
                              color: AppColors.primary,
                              fontWeight: FontWeight.w800,
                            ),
                          ],
                        ),
                        const Gap(height: 10),
                        AppInputWidgetTwo(
                          controller: controller.emailTextEditingController,
                          keyboardType: TextInputType.number,
                          hintText: "Enter your email",
                          filled: true,
                          isEmail: true,
                          textInputAction: TextInputAction.done,
                          maxLines: 1,
                          fillColor: AppColors.deepWhte,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                        const Gap(height: 30),
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoutes.otpVerificationScreen,
                                  arguments: {
                                    "email": controller
                                        .emailTextEditingController.text,
                                    "screen": "forgetPassword"
                                  });
                              // if (controller.isLoading.value == false) {
                              //   controller.clickSendButton();
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
                                      data: "Confirm",
                                      fontSize: 18,
                                      color: AppColors.grey50,
                                      fontWeight: FontWeight.w600,
                                    ),
                            ),
                          ),
                        ),
                        // const Gap(height: 50),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     const AppText(
                        //       data: "Need help?",
                        //       fontWeight: FontWeight.w500,
                        //       color: AppColors.grey700,
                        //       fontSize: 16,
                        //     ),
                        //     TextButton(
                        //       onPressed: () {
                        //         Get.toNamed(AppRoutes.reportScreen);
                        //       },
                        //       child: const AppText(
                        //         data: "Contact Us",
                        //         fontWeight: FontWeight.w600,
                        //         color: AppColors.blue,
                        //         fontSize: 16,
                        //       ),
                        //     )
                        //   ],
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
