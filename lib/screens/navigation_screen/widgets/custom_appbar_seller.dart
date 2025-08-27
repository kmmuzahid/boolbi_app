import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/images/app_asset_icons.dart';
import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/navigation_screen/controllers/navigation_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';

PreferredSize customAppBarSeller() {
  return PreferredSize(
    preferredSize: Size.fromHeight(AppSize.size.height * 0.08),
    child: Material(
      color: AppColors.deepWhte,
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(bottom: AppSize.width(value: 20), left: AppSize.width(value: 10)),
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
              title: GestureDetector(
                onTap: () {
                  // gotoHomeScreen();
                },
                child: AppImage(
                  height: AppSize.height(value: 60),
                  path: AssetsImagesPath.logoBlack,
                ),
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

gotoHomeScreen() {
  try {
    Get.putOrFind<NavigationScreenController>(() => NavigationScreenController()).sellerChangeScreenNav(0, true);
  } catch (e) {
    log("Error $e");
  }
}
