import 'package:boolbi_app/screens/customer_message_screen/customer_message_screen.dart';
import 'package:boolbi_app/screens/navigation_screen/widgets/provider_appbar.dart';
import 'package:boolbi_app/screens/navigation_screen/widgets/provider_drawer_card.dart';
import 'package:boolbi_app/screens/provider_home_screen/provider_home_screen.dart';
import 'package:boolbi_app/screens/provider_offer_screen/provider_offer_screen.dart';
import 'package:boolbi_app/screens/provider_profile_screen/provider_profile_screen.dart';
import 'package:boolbi_app/screens/provider_project_screen/provider_project_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/images/app_asset_icons.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/navigation_screen/controllers/navigation_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';

class ProviderNavigationScreen extends StatelessWidget {
  const ProviderNavigationScreen({super.key, required this.controller});
  final NavigationScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Obx(
          () => Scaffold(
            extendBody: true,
            drawer: const ProviderCustomDrawerWidget(),
            appBar: providerCustomAppBar(),
            backgroundColor: AppColors.white,
            body: IndexedStack(
              index: controller.selectedIndex.value,
              children: const [
                ProviderHomeScreen(),
                ProviderOfferScreen(),
                CustomerMessageScreen(),
                ProviderProjectScreen(),
                ProviderProfileScreen(),
              ],
            ),
            bottomNavigationBar: Material(
              elevation: 3,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Container(
                decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                // height: AppSize.height(value: 80),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    splashFactory:
                        NoSplash.splashFactory, // Disables the splash effect
                  ),
                  child: BottomNavigationBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    onTap: (value) {
                      controller.changeIndex(value);
                    },
                    type: BottomNavigationBarType.fixed,
                    currentIndex: controller.selectedIndex.value,
                    selectedIconTheme:
                        const IconThemeData(color: null), // No color applied
                    unselectedIconTheme:
                        const IconThemeData(color: null), // No color applied
                    selectedItemColor:
                        AppColors.black, // Color for the selected item label
                    unselectedItemColor:
                        AppColors.primary, // Color for unselected item labels
                    selectedLabelStyle: const TextStyle(fontSize: 13),
                    unselectedLabelStyle: const TextStyle(fontSize: 13),
                    items: [
                      BottomNavigationBarItem(
                        icon: Image.asset(
                          controller.selectedIndex.value == 0
                              ? AssetsSellerNavIcons.home2
                              : AssetsSellerNavIcons.home1,
                          height: AppSize.height(value: 30),
                          color: null, // Keeps the original color of the image
                        ),
                        label: "Home",
                      ),
                      BottomNavigationBarItem(
                        icon: Image.asset(
                          controller.selectedIndex.value == 1
                              ? AssetsSellerNavIcons.offer2
                              : AssetsSellerNavIcons.offer1,
                          height: AppSize.height(value: 30),
                          color: null, // Keeps the original color of the image
                        ),
                        label: "My Box",
                      ),
                      BottomNavigationBarItem(
                        icon: Image.asset(
                          controller.selectedIndex.value == 2
                              ? AssetsSellerNavIcons.messsage2
                              : AssetsSellerNavIcons.messsage1,
                          height: AppSize.height(value: 30),
                          color: null, // Keeps the original color of the image
                        ),
                        label: "Message",
                      ),
                      BottomNavigationBarItem(
                        icon: Image.asset(
                          (controller.selectedIndex.value == 3
                              ? AssetsSellerNavIcons.project2
                              : AssetsSellerNavIcons.project1),
                          height: AppSize.height(value: 30),
                          color: null, // Keeps the original color of the image
                        ),
                        label: "Project",
                      ),
                      BottomNavigationBarItem(
                        icon: Image.asset(
                          (controller.selectedIndex.value == 4
                              ? AssetsSellerNavIcons.profile2
                              : AssetsSellerNavIcons.profile1),
                          height: AppSize.height(value: 30),
                          color: null, // Keeps the original color of the image
                        ),
                        label: "Profile",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
