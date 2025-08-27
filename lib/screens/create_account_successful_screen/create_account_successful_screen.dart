import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/create_account_successful_screen/controllers/create_account_successful_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountSuccessfulScreen extends StatelessWidget {
  const CreateAccountSuccessfulScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CreateAccountSuccessfulScreenController(),
      builder: (controller) {
        return Container(
          height: AppSize.size.height,
          width: AppSize.size.width,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage(AssetsImagesPath.designBackground),
                fit: BoxFit.fill),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppImage(
                          height: AppSize.height(value: 130),
                          path: AssetsImagesPath.successImage,
                        ),
                        const Gap(height: 30),
                        const AppText(
                          data: "Account Create Successful",
                          color: AppColors.primary,
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Gap(height: 15),

                        const AppText(
                          data: "Your Account Has Been Created Successfully",
                          color: AppColors.primary,
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          // maxLines: 1,
                          // overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                        const Gap(height: 50),
                        GestureDetector(
                          onTap: () {
                            Get.offAllNamed(AppRoutes.chooseAuthScreen);
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
                              data: "Back To Log In",
                              fontSize: 18,
                              color: AppColors.grey50,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        // const Gap(height: 20),
                        // GestureDetector(
                        //   onTap: () {
                        //     controller.backToHomeButton();
                        //   },
                        //   child: Container(
                        //     width: Get.width,
                        //     height: AppSize.width(value: 50.0),
                        //     alignment: Alignment.center,
                        //     decoration: BoxDecoration(border: Border.all(color: AppColors.primary), color: AppColors.deepWhte, borderRadius: BorderRadius.circular(AppSize.width(value: 8))),
                        //     child: const AppText(
                        //       data: "Back to Home",
                        //       fontSize: 18,
                        //       color: AppColors.primary,
                        //       fontWeight: FontWeight.w600,
                        //     ),
                        //   ),
                        // ),
                        const Gap(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
