import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/start_page.dart/controllers/start_page_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    AppSize.size = size;
    return GetBuilder(
        init: StartPageController(),
        builder: (controller) {
          return Container(
            height: AppSize.size.height,

          width: AppSize.size.width,
            
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
            
                  image: AssetImage(AssetsImagesPath.designBackground),fit: BoxFit.fill),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppImage(
                    height: AppSize.height(value: 250),
                    path: AssetsImagesPath.splashLogo,
                  ),
                 const Gap(height: 50),
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.onBoardScreen);
                            // controller.login();
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
                               data: "Get Started >>",
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
