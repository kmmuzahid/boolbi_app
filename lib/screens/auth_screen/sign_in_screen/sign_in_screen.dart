import 'package:boolbi_app/const/storage/get_storage.dart';
import 'package:boolbi_app/enum_types/app_user_type.dart';
import 'package:boolbi_app/screens/navigation_screen/widgets/custom_appbar_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/images/app_asset_icons.dart';
import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/auth_screen/sign_in_screen/controllers/sign_in_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInScreenController>(
      init: SignInScreenController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: const CustomAppBarAuth(text: "Sign In"),
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
              child: Form(
                key: controller.signInFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //           Row(children: [
                    // AppImage(path: AssetsImagesPath.backButton,height: 30,width: 30,)
                    //           ]),
                    // Container(
                    //   height: AppSize.size.height * 0.20,
                    //   width: AppSize.size.width,
                    //   decoration: const BoxDecoration(
                    //     color: AppColors.primary,
                    //     borderRadius: BorderRadius.only(
                    //       bottomLeft: Radius.circular(20),
                    //       bottomRight: Radius.circular(20),
                    //     ),
                    //   ),
                    //   alignment: Alignment.center,
                    //   child: AppImage(
                    //     path: AssetsImagesPath.splashLogo,
                    //     height: AppSize.height(value: 110),
                    //   ),
                    // ),
                    const Gap(height: 10),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: AppText(
                        data:
                            "Sign In To manage Your Project And Connect With Exparts.",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                      ),
                    ),
                    const Gap(height: 30),
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
                          hintText: "Enter your email",
                          filled: true,
                          isEmail: true,
                          fillColor: AppColors.deepWhte,
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
                        hintText: "Enter your password",
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Obx(
                                () => Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor: AppColors.grey900,
                                  ),
                                  child: Checkbox(
                                    activeColor: AppColors.grey50,
                                    visualDensity: const VisualDensity(
                                      horizontal: -4,
                                      vertical: -4,
                                    ),
                                    side: WidgetStateBorderSide.resolveWith(
                                      (states) {
                                        if (states.contains(
                                          WidgetState.selected,
                                        )) {
                                          return const BorderSide(
                                            color: AppColors.grey900,
                                          );
                                        } else {
                                          return const BorderSide(
                                            color: AppColors.grey900,
                                          );
                                        }
                                      },
                                    ),
                                    value: controller.isRememberMe.value,
                                    checkColor: AppColors.grey900,
                                    fillColor: const WidgetStatePropertyAll(
                                        AppColors.grey50),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        color: AppColors.grey900,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          AppSize.width(value: 5.0)),
                                    ),
                                    onChanged: (value) {
                                      controller.isRememberMe.value = value!;
                                    },
                                  ),
                                ),
                              ),
                              const AppText(
                                data: "Remember me",
                                color: AppColors.grey900,
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(AppRoutes.forGot);
                            },
                            child: const AppText(
                              data: "Forgot Password?",
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                              fontSize: 15,
                              // decoration: TextDecoration.underline,
                              // decorationColor: AppColors.primary,
                            ),
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
                            // controller.roleSelect(AppStorage().getValue(
                            //             StorageKey.setLoginUserRole) ==
                            //         "customer"
                            //     ? "customer"
                            //     : "provider");
                            // Get.toNamed(AppRoutes.navigationScreen);
                            // if (controller.isLoading.value == false) {
                            //   if (controller.signInFormKey.currentState
                            //           ?.validate() ??
                            //       false) {
                            //     controller.clickSignIButton();
                            //   }
                            // }
                            // Frontend Login Value Handle
                            if (selectedUser == Usertype.customer) {
                              AppStorage().setLoginValue("customer");
                              Get.toNamed(AppRoutes.navigationScreen);
                            } else {
                              AppStorage().setLoginValue("provider");
                              Get.toNamed(AppRoutes.navigationScreen);
                            }
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
                            child: controller.isLoading.value
                                ? const Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                                  )
                                : const AppText(
                                    data: "Login",
                                    fontSize: 18,
                                    color: AppColors.grey50,
                                    fontWeight: FontWeight.w900,
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
                          data: "Don't have An Account?",
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey900,
                          fontSize: 15,
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.signUp);
                          },
                          child: const AppText(
                            data: "Create Account",
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    const Gap(height: 10),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: AppText(
                              data: "Or",
                              color: AppColors.grey700,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(height: AppSize.size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: AppSize.height(value: 50),
                            width: AppSize.width(value: 50),
                            padding: const EdgeInsets.all(13),
                            decoration: BoxDecoration(
                              color: AppColors.grey50,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const AppImage(
                              path: AssetsIconsPath.apple,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Gap(width: AppSize.size.width * 0.10),
                        Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: AppSize.height(value: 50),
                            width: AppSize.width(value: 50),
                            padding: const EdgeInsets.all(13),
                            decoration: BoxDecoration(
                              color: AppColors.grey50,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const AppImage(
                              path: AssetsIconsPath.google,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(height: AppSize.size.height * 0.03),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
