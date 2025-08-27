import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/welcome_page.dart/controllers/welcome_page_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    AppSize.size = size;
    return GetBuilder(
        init: WelcomePageController(),
        builder: (controller) {
          return Container(
            height: AppSize.size.height,
            width: AppSize.size.width,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.white,
              // image: DecorationImage(

              //     image: AssetImage(AssetsImagesPath.designBackground),fit: BoxFit.fill),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Row(
                      children: [
                        AppImage(
                          height: AppSize.height(value: 50),
                          path: AssetsImagesPath.splashLogo,
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 20),
                  AppImage(
                    height: AppSize.height(value: 350),
                    path: AssetsImagesPath.welcomeImage,
                  ),
                  const Gap(height: 20),
                  const Padding(
                      padding:
                           EdgeInsets.only(left: 20, right: 20, top: 15),
                      child: AppText(
                        data:
                            "We’re excited to have you back! Start exploring new opportunities, manage your current roles, and connect with top talent to help your business thrive. Let’s make your hiring process easier and more effective than ever",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 10,
                        textAlign: TextAlign.justify,
                        fontSize: 18,
                      )),
                  const Gap(height: 50),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.navigationScreen);
                        // controller.login();
                      },
                      child: Container(
                        width: Get.width,
                        height: AppSize.width(value: 50.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius:
                                BorderRadius.circular(AppSize.width(value: 8))),
                        child: const AppText(
                          data: "Let's Go",
                          fontSize: 18,
                          color: AppColors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
