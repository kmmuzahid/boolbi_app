import 'package:boolbi_app/screens/customer_message_screen/customer_message_screen.dart';
import 'package:boolbi_app/screens/customer_post_job_screen/customer_post_job_screen.dart';
import 'package:boolbi_app/screens/customer_profile_screen/customer_profile_screen.dart';
import 'package:boolbi_app/screens/customer_home_screen/customer_home_screen.dart';
import 'package:boolbi_app/screens/customer_project_screen/customer_project_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:boolbi_app/const/images/app_asset_icons.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/navigation_screen/controllers/navigation_screen_controller.dart';
import 'package:boolbi_app/screens/navigation_screen/widgets/custom_appbar.dart';
import 'package:boolbi_app/screens/navigation_screen/widgets/user_drawer_card.dart';
import 'package:boolbi_app/utils/app_size.dart';

class UserNavigationScreen extends StatelessWidget {
  const UserNavigationScreen({super.key, required this.controller});
  final NavigationScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Obx(
          () => Scaffold(
            extendBody: true,
            drawer: const CustomerCustomDrawerWidget(),
            appBar: customerCustomAppBar(),
            backgroundColor: AppColors.white,
            body: IndexedStack(
              index: controller.selectedIndex.value,
              children: const [
                CustomerHomeScreen(),
                CustomerPostJobScreen(),
                CustomerMessageScreen(),
                CustomerProjectScreen(),
                CustomerProfileScreen(),
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
                    unselectedLabelStyle: const TextStyle(fontSize: 10),
                    items: [
                      BottomNavigationBarItem(
                        icon: Image.asset(
                          controller.selectedIndex.value == 0
                              ? AssetsUserNavIcons.home2
                              : AssetsUserNavIcons.home1,
                          height: AppSize.height(value: 30),
                          color: null, // Keeps the original color of the image
                        ),
                        label: "Home",
                      ),
                      BottomNavigationBarItem(
                        icon: Image.asset(
                          controller.selectedIndex.value == 1
                              ? AssetsUserNavIcons.postJob2
                              : AssetsUserNavIcons.postJob1,
                          height: AppSize.height(value: 30),
                          color: null, // Keeps the original color of the image
                        ),
                        label: "Post Job",
                      ),
                      BottomNavigationBarItem(
                        icon: Image.asset(
                          controller.selectedIndex.value == 2
                              ? AssetsUserNavIcons.messsage2
                              : AssetsUserNavIcons.messsage1,
                          height: AppSize.height(value: 30),
                          color: null, // Keeps the original color of the image
                        ),
                        label: "Message",
                      ),
                      BottomNavigationBarItem(
                        icon: Image.asset(
                          (controller.selectedIndex.value == 3
                              ? AssetsUserNavIcons.project2
                              : AssetsUserNavIcons.project1),
                          height: AppSize.height(value: 30),
                          color: null, // Keeps the original color of the image
                        ),
                        label: "Project",
                      ),
                      BottomNavigationBarItem(
                        icon: Image.asset(
                          (controller.selectedIndex.value == 4
                              ? AssetsUserNavIcons.profile2
                              : AssetsUserNavIcons.profile1),
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
