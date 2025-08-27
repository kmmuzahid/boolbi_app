import 'package:boolbi_app/screens/navigation_screen/widgets/custom_appbar_auth.dart';
import 'package:boolbi_app/widgets/log_print/app_log.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/app_const/app_const.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/enum_types/guest_user_type.dart';
import 'package:boolbi_app/enum_types/app_user_type.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/auth_screen/sign_up_screen/controllers/sign_up_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SignUpScreenController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.primaryBackgroud,
          appBar: const CustomAppBarAuth(text: "Sign Up"),
          body: SingleChildScrollView(
            child: Form(
              key: controller.signUpFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const Gap(height: 20),
                  // const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 10),
                  //   child: AppText(
                  //     data: "Sign Up",
                  //     color: AppColors.primary,
                  //     fontSize: 28,
                  //     fontWeight: FontWeight.w600,
                  //   ),
                  // ),
                  const Gap(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: AppText(
                      data: "Get Started by Joining The Job Service Network",
                      color: AppColors.primary,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Gap(height: 40),
                  Obx(
                    () => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  isGuest = IsUserType.user;
                                  controller.isProvider.value = false;
                                  selectedUser = Usertype.customer;
                                  appLog(
                                      "Select Role is Seller :${controller.isProvider.value}");
                                },
                                child: Container(
                                  margin:
                                      EdgeInsets.all(AppSize.width(value: 5)),
                                  padding:
                                      EdgeInsets.all(AppSize.width(value: 5)),
                                  width: Get.width,
                                  height: AppSize.height(value: 45),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: AppColors.black900),
                                      color: controller.isProvider.value
                                          ? AppColors.deepWhte
                                          : AppColors.primary,
                                      borderRadius: BorderRadius.circular(
                                          AppSize.width(value: 8.0))),
                                  child: AppText(
                                    data: "Customer",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: controller.isProvider.value
                                        ? AppColors.primary
                                        : AppColors.deepWhte,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  isGuest = IsUserType.user;
                                  controller.isProvider.value = true;
                                  selectedUser = Usertype.provider;
                                  appLog(
                                      "Select Role is Seller :${controller.isProvider.value}");
                                },
                                child: Container(
                                  margin:
                                      EdgeInsets.all(AppSize.width(value: 5)),
                                  padding:
                                      EdgeInsets.all(AppSize.width(value: 5)),
                                  width: Get.width,
                                  height: AppSize.height(value: 45),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: AppColors.black500),
                                      color: controller.isProvider.value
                                          ? AppColors.primary
                                          : AppColors.deepWhte,
                                      borderRadius: BorderRadius.circular(
                                        AppSize.width(value: 8.0),
                                      )),
                                  child: AppText(
                                    data: "Service Provider",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: controller.isProvider.value
                                        ? AppColors.deepWhte
                                        : AppColors.primary,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 30),
                   Obx(
                     ()=> Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          AppText(
                            data: controller.isProvider.value != true ? "Full Name" : "Full Name Or Company Name  ",
                            fontSize: 16,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w800,
                          ),
                        ],
                      ),
                                       ),
                   ),
                  const Gap(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: AppInputWidgetTwo(
                        controller: controller.nameTextEditingController,
                        hintText: "Name",
                        filled: true,
                        fillColor: AppColors.deepWhte,
                        textInputAction: TextInputAction.next,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                    ),
                  ),
                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Email",
                          fontSize: 16,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: AppInputWidgetTwo(
                        controller: controller.emailTextEditingController,
                        hintText: "Email",
                        filled: true,
                        isEmail: true,
                        fillColor: AppColors.deepWhte,
                        textInputAction: TextInputAction.next,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                    ),
                  ),
                  const Gap(height: 20),
                   Obx(
                     ()=> Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          AppText(
                            data: controller.isProvider.value != true ? "Phone Number ( Optional )" : "Phone Number ",
                            fontSize: 16,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w800,
                          ),
                        ],
                      ),
                                       ),
                   ),
                  const Gap(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: AppInputWidgetTwo(
                        controller: controller.nameTextEditingController,
                        hintText: "Phone Number",
                        filled: true,
                        fillColor: AppColors.deepWhte,
                        textInputAction: TextInputAction.next,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                    ),
                  ),
                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Password",
                          fontSize: 16,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: AppInputWidgetTwo(
                      controller: controller.passwordTextEditingController,
                      hintText: "Password",
                      filled: true,
                      onFieldSubmitted: (p0) {
                        FocusManager.instance.primaryFocus?.nextFocus();
                      },
                      isPassWord: true,
                      maxLines: 1,
                      fillColor: AppColors.deepWhte,
                      textInputAction: TextInputAction.next,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                  ),
                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Confirm Password",
                          fontSize: 16,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: AppInputWidgetTwo(
                      controller:
                          controller.confirmPasswordTextEditingController,
                      hintText: "Confirm Password",
                      filled: true,
                      isPassWord: true,
                      maxLines: 1,
                      fillColor: AppColors.deepWhte,
                      textInputAction: TextInputAction.done,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                  ),
                  const Gap(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(
                          () => Theme(
                            data: ThemeData(
                              unselectedWidgetColor: AppColors.grey900,
                            ),
                            child: Checkbox(
                              activeColor: AppColors.grey50,
                              visualDensity: const VisualDensity(
                                  horizontal: -4, vertical: -4),
                              side: WidgetStateBorderSide.resolveWith(
                                (states) {
                                  if (states.contains(WidgetState.selected)) {
                                    return const BorderSide(
                                        color: AppColors.grey900);
                                  } else {
                                    return const BorderSide(
                                        color: AppColors.grey900);
                                  }
                                },
                              ),
                              value: controller.isRememberMe.value,
                              checkColor: AppColors.grey900,
                              fillColor: const WidgetStatePropertyAll(
                                  AppColors.grey50),
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: AppColors.grey900),
                                  borderRadius: BorderRadius.circular(
                                      AppSize.width(value: 5.0))),
                              onChanged: (value) {
                                controller.isRememberMe.value = value!;
                              },
                            ),
                          ),
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            text: "i agree with ",
                            style: const TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w500,
                                fontFamily: AppConst.urbanist),
                            children: [
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                                text: "terms",
                                style: const TextStyle(
                                  color: AppColors.primary,
                                  fontFamily: AppConst.urbanist,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const TextSpan(
                                text: " of service and ",
                                style: TextStyle(
                                    color: AppColors.grey900,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: AppConst.urbanist),
                              ),
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                                text: "policy",
                                style: const TextStyle(
                                  color: AppColors.primary,
                                  fontFamily: AppConst.urbanist,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (controller.isRememberMeValidation.value == false)
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          AppText(
                            data: "Please accept the terms & policy",
                            color: AppColors.error,
                            fontSize: 13,
                          ),
                        ],
                      ),
                    ),
                  const Gap(height: 30),
                  Obx(
                    () => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.otpVerificationScreen,
                              arguments: {
                                "email":
                                    controller.emailTextEditingController.text,
                                "screen": "signUp"
                              });
                          // if (controller.isLoading.value == false) {
                          //   controller.clickCreateAccountButton();
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
                                  data: "Create Account",
                                  fontSize: 18,
                                  color: AppColors.grey50,
                                  fontWeight: FontWeight.w600,
                                ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AppText(
                        data: "Already have any account?",
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey700,
                        fontSize: 17,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offAllNamed(AppRoutes.signIn);
                        },
                        child: const AppText(
                          data: "Sign in",
                          fontWeight: FontWeight.w900,
                          color: AppColors.primary,
                          fontSize: 17,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
