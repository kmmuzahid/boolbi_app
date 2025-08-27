import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image_circular.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:boolbi_app/const/images/app_asset_icons.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:get/get.dart';

PreferredSize providerCustomAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(AppSize.size.height * 0.08),
    child: Material(
      color: AppColors.primary,
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: AppSize.width(value: 20),
                    left: AppSize.width(value: 10)),
                child: AppImage(
                  height: AppSize.size.height * 0.033,
                  path: AssetsIconsPath.menu,
                ),
              ),
            ),
            AppBar(
              iconTheme: const IconThemeData(
                size: 30,
                opacity: 0,
              ),
              backgroundColor: AppColors.deepWhte,
              centerTitle: true,
              forceMaterialTransparency: true,
              // title: GestureDetector(
              //   onTap: () {
              //     // if (isGuest == IsUserType.guest) {
              //     //   GuestModeRestrictionWidget();
              //     // } else {
              //     //   _gotoHomeScreen();
              //     // }
              //   },
              //   child: Container(
              //     padding: const EdgeInsets.all(10),
                  

              //  decoration: BoxDecoration(
              //      color: AppColors.white,
              //      borderRadius: BorderRadius.circular(20)
              //  ),
              //     child: AppImage(
              //       color: Colors.white,
              //       height: AppSize.height(value: 40),
              //       path: AssetsImagesPath.splashLogo,
              //     ),
              //   ),
              // ),
              title:  const Row(
                children: [
                  AppImageCircular(height: 45,width: 45,
                      path: AssetsImagesPath.demoImage,
                      fit: BoxFit.cover,
                  ),
                  Gap(width: 10),
                  // AppImage(height: 50,width: 50,
                  // path: AssetsImagesPath.demoImage,
                  // ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       AppText(
                        // data: "Looking for Service Provider",
                        data: "Hello there,",
                        color: AppColors.grey300,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                                         ),
                       AppText(
                        // data: "Looking for Service Provider",
                        data: "Brother's Limited",
                        color: AppColors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                                         ),
                     ],
                   ),
                ],
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.notificationScreen);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: AppSize.width(value: 20)),
                    child: AppImage(
                      height: AppSize.size.height * 0.030,
                      path: AssetsIconsPath.notification,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

// _gotoHomeScreen() {
//   try {
//     Get.putOrFind<NavigationScreenController>(() => NavigationScreenController()).userChangeScreenNav(0, true);
//   } catch (e) {
//     print("Error $e");
//   }
// }
