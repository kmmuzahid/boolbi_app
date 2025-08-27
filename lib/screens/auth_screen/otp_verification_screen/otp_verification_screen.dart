import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/navigation_screen/widgets/custom_appbar_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/app_const/app_const.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/auth_screen/otp_verification_screen/controllers/otp_verification_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/inputs/otp_input_field_widget.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: OtpVerificationScreenController(),
      builder: (controller) {
        return Obx(
          () => Scaffold(
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
                      key: controller.verificationCodeKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Gap(height: 50),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: AppText(
                              data: "Verify OTP",
                              color: AppColors.primary,
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Gap(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: RichText(
                              textAlign: TextAlign.center,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              text: const TextSpan(
                                text:
                                    "Enter Your OTP Which Has Been Sent To Sent To Your Email And Completely Verify Your Account.",
                                style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: AppConst.urbanist),
                                // children: [
                                //   TextSpan(
                                //     text: controller.argData["email"] ??
                                //         "demo@gmail.com",
                                //     style: TextStyle(
                                //         color: AppColors.grey900,
                                //         fontSize: 17,
                                //         fontWeight: FontWeight.w500,
                                //         fontFamily: AppConst.urbanist),
                                //   ),
                                // ],
                              ),
                            ),
                          ),
                          const Gap(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OtpInputFieldWidget(
                                  controller:
                                      controller.otp1TextEditingController),
                              OtpInputFieldWidget(
                                controller:
                                    controller.otp2TextEditingController,
                              ),
                              OtpInputFieldWidget(
                                controller:
                                    controller.otp3TextEditingController,
                              ),
                              OtpInputFieldWidget(
                                controller:
                                    controller.otp4TextEditingController,
                              ),
                              OtpInputFieldWidget(
                                controller:
                                    controller.otp5TextEditingController,
                              ),
                              OtpInputFieldWidget(
                                controller:
                                    controller.otp6TextEditingController,
                                textInputAction: TextInputAction.done,
                                onChanged: (p0) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                onFieldSubmitted: (p0) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                              ),
                            ],
                          ),
                          const Gap(height: 50),
                          const AppText(
                            data: "A Code Has Been Sent To Your Email ",
                            fontWeight: FontWeight.w500,
                            color: AppColors.primary,
                            fontSize: 15,
                          ),
                          const Gap(height: 10),
                          Align(
                            alignment: Alignment.center,
                            child: Obx(
                              () => RichText(
                                textAlign: TextAlign.start,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                  text: "Resend in: ",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primary,
                                    fontSize: 15,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          "${controller.formatTime(controller.seconds.value)} s",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.primary,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Gap(height: 30),
                          Obx(
                            () => GestureDetector(
                              onTap: () {
                                // if (controller.isLoading.value == false) {
                                //   controller.clickContinueButton(context);
                                // }
                                if (controller.argData["screen"] == "signUp") {
                                  Get.toNamed(
                                      AppRoutes.createAccountSuccessfulScreen);
                                } else if (controller.argData["screen"] ==
                                    "forgetPassword") {
                                  Get.toNamed(AppRoutes.resetPasswordScreen);
                                } else {
                                  Get.toNamed(
                                      AppRoutes.changePasswordSuccessfulScreen);
                                }
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
                                        data: "Verify",
                                        fontSize: 18,
                                        color: AppColors.grey50,
                                        fontWeight: FontWeight.w600,
                                      ),
                              ),
                            ),
                          ),
                          const Gap(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const AppText(
                                data: "Can't find the OTP?",
                                fontWeight: FontWeight.w500,
                                color: AppColors.primary,
                                fontSize: 18,
                              ),
                              TextButton(
                                onPressed: () {
                                  controller.reCallStatTimer();
                                },
                                child: AppText(
                                  data: "Resend OTP.",
                                  fontWeight: FontWeight.w900,
                                  color: controller.seconds.value == 0
                                      ? AppColors.primary
                                      : AppColors.primaryWithOpacityW5,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                          // const Gap(height: 200),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     const AppText(
                          //       data: "Need help?",
                          //       fontWeight: FontWeight.w500,
                          //       color: AppColors.grey700,
                          //       fontSize: 17,
                          //     ),
                          //     TextButton(
                          //       onPressed: () {
                          //         Get.toNamed(AppRoutes.reportScreen);
                          //       },
                          //       child: const AppText(
                          //         data: "Contact Us",
                          //         fontWeight: FontWeight.w600,
                          //         color: AppColors.blue,
                          //         fontSize: 17,
                          //       ),
                          //     )
                          //   ],
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        );
      },
    );
  }
}
