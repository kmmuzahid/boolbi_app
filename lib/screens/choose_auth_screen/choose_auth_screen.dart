import 'package:boolbi_app/enum_types/guest_user_type.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/choose_auth_screen/controllers/choose_auth_screen_controller.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

class ChooseAuthScreen extends StatelessWidget {
  const ChooseAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ChooseAuthScreenController(),
        builder: (controller) {
          return AnnotatedRegion(
            value: const SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              systemNavigationBarIconBrightness: Brightness.dark,
              statusBarColor: AppColors.white,
            ),
            child: Scaffold(
                backgroundColor: AppColors.white,
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppImage(
                        height: AppSize.height(value: 150),
                        path: AssetsImagesPath.splashLogo,
                      ),
                      const Gap(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: AppText(
                          data:
                              " If you're new here, don't worry, it's quick and easy to create an account and start exploring all the magical deals we have in store for you",
                          fontSize: AppSize.size.height * 0.017,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                          height: 1.3,
                        ),
                      ),
                      const Gap(height: 30),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () {
                            controller.login();
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
                              data: "Log In",
                              fontSize: 18,
                              color: AppColors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 0),
                        child: GestureDetector(
                          onTap: () {
                            controller.createAccount();
                          },
                          child: Container(
                            width: Get.width,
                            height: AppSize.width(value: 50.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(
                                    color: AppColors.primary, width: 1.5),
                                borderRadius: BorderRadius.circular(
                                    AppSize.width(value: 8))),
                            child: const AppText(
                              data: "Sign Up",
                              fontSize: 18,
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const Gap(height: 50),
                      TextButton(
                        onPressed: () {
                          isGuest = IsUserType.guest;
                          Get.toNamed(AppRoutes.navigationScreen);
                        },
                        child: const AppText(
                          data: "Continue as guest",
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                )),
          );
        });
  }
}
