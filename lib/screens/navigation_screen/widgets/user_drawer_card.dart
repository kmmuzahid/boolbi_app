import 'dart:ui';
import 'package:boolbi_app/const/images/app_asset_icons.dart';
import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/enum_types/guest_user_type.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/navigation_screen/widgets/user_drawer_widget.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/guest_user_restriction_page.dart';
import 'package:flutter/material.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:get/get.dart';

class CustomerCustomDrawerWidget extends StatelessWidget {
  const CustomerCustomDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35),
          child: Drawer(
            backgroundColor: AppColors.white,
            width: AppSize.size.width * 0.55,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      AppImage(
                        height: AppSize.height(value: 100),
                        path: AssetsImagesPath.splashLogo,
                      ),
                      const Gap(height: 30),
                      UserDrawerCard(
                          onTap: () {
                            if (isGuest == IsUserType.guest) {
                              GuestModeRestrictionWidget();
                            } else {
                              Get.toNamed(
                                  AppRoutes.customerPersonalInformationScreen);
                            }
                          },
                          text: "Edit Profile",
                          iconPath: AssetsIconsPath.editProfile),
                      const Gap(height: 20),
                      UserDrawerCard(
                        onTap: () {
                          if (isGuest == IsUserType.guest) {
                            GuestModeRestrictionWidget();
                          } else {
                            Get.toNamed(
                                AppRoutes.customerOfferRequestListScreen);
                          }
                        },
                        text: "My Offer Reuest",
                        iconPath: AssetsIconsPath.people,
                      ),
                      const Gap(height: 20),
                      UserDrawerCard(
                          onTap: () {
                            Get.toNamed(AppRoutes.customerSettingScreen);

                            // if (isGuest == IsUserType.guest) {
                            //   GuestModeRestrictionWidget();
                            // } else {
                            //   Get.toNamed(AppRoutes.customerOrderRequestListScreen);
                            // }
                          },
                          text: "Setting",
                          iconPath: AssetsIconsPath.setting),
                      const Gap(height: 20),
                      UserDrawerCard(
                        onTap: () {
                          if (isGuest == IsUserType.guest) {
                            GuestModeRestrictionWidget();
                          } else {
                            Get.toNamed(
                                AppRoutes.customerFavoriteViewAllScreen);
                          }
                        },
                        text: "Favorite",
                        iconPath: AssetsIconsPath.favorite,
                      ),
                      const Gap(height: 20),
                      UserDrawerCard(
                        onTap: () {
                          if (isGuest == IsUserType.guest) {
                            GuestModeRestrictionWidget();
                          } else {
                            // Get.toNamed(AppRoutes.contactScreen);
                          }
                        },
                        text: "Payment Method",
                        iconPath: AssetsIconsPath.paymentMethod,
                      ),
                    ],
                  ),
                  // GestureDetector(
                  //   onTap: () async {
                  //     Get.offAllNamed(AppRoutes.chooseAuthScreen);
                  //     await Future.wait([
                  //       AppStorage().storageAllClear(),
                  //     ]);
                  //   },
                  //   child: Container(
                  //     width: Get.width,
                  //     height: AppSize.width(value: 35.0),
                  //     alignment: Alignment.center,
                  //     decoration: BoxDecoration(
                  //         color: AppColors.primary,
                  //         borderRadius:
                  //             BorderRadius.circular(AppSize.width(value: 8))),
                  //     child: const Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         AppText(
                  //           data: "Logout",
                  //           fontSize: 16,
                  //           color: AppColors.white,
                  //           fontWeight: FontWeight.w600,
                  //           maxLines: 1,
                  //           overflow: TextOverflow.ellipsis,
                  //         ),
                  //         Gap(width: 8),
                  //         Icon(
                  //           Icons.logout,
                  //           color: AppColors.white,
                  //           size: 20,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
