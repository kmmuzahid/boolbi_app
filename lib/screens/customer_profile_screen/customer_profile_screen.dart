import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/customer_profile_screen/controllers/customer_profile_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/dialog_boxes/log_out_dailog.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerProfileScreen extends StatelessWidget {
  const CustomerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerProfileScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            body: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSize.width(value: 20),
                        vertical: AppSize.size.height * 0.020),
                    child: Column(
                      children: [
                        SizedBox(
                          width: AppSize.size.width,
                          child: CircleAvatar(
                            backgroundColor: AppColors.white,
                            radius: 60,
                            child: CircleAvatar(
                              radius: 58,
                              backgroundColor: AppColors.primary,
                              backgroundImage:
                                  const AssetImage(AssetsImagesPath.demoImage),
                              // backgroundImage: controller.profileData.data?.auth?.profile != null && controller.profileData.data!.auth!.profile!.isNotEmpty ? NetworkImage(controller.profileData.data!.auth!.profile!) : const NetworkImage("https://cdn-icons-png.flaticon.com/512/12225/12225935.png"),
                              child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: GestureDetector(
                                    onTap: () {
                                      // Get.toNamed(AppRoutes.userEditProfileScreen, arguments: controller.profileData);
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(2),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Container(
                                          alignment: Alignment.center,
                                          height: AppSize.size.height * 0.04,
                                          width: AppSize.size.width * 0.10,
                                          decoration: BoxDecoration(
                                              color: const Color(0xffFEFEFE),
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: AppColors.white,
                                                  width: AppSize.size.width *
                                                      0.005)),
                                          child: const Icon(
                                            Icons.camera_alt_outlined,
                                            size: 23,
                                            color: Color(0xffA1A1A1),
                                          )),
                                    ),
                                  )),
                            ),
                          ),
                        ),
                        const Gap(height: 15),
                        const AppText(
                          data: "Withdrawal limited company",
                          // data: controller.profileData.data?.auth?.name ?? "N/A",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),
                        const Gap(height: 10),
                        const AppText(
                          data: "demo@gmail.com",
                          // data: controller.profileData.data?.auth?.name ?? "N/A",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blue,
                        ),
                        const Gap(height: 10),
                      ],
                    ),
                  ),
                ),
                const Gap(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          AppText(
                            data: "My Information",
                            // data: controller.profileData.data?.auth?.name ?? "N/A",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primary,
                          ),
                        ],
                      ),
                      const Gap(height: 20),
                      ProfileScreenCard(
                        text: "Personal Information",
                        onTap: () {
                          Get.toNamed(
                              AppRoutes.customerViewProfileScreen);
                        },
                      ),
                         ProfileScreenCard(
                        text: "Account Verification",
                        onTap: () {
                          Get.toNamed(
                              AppRoutes.providerAccountVerificationScreen);
                        },
                      ),
                      ProfileScreenCard(
                        text: "Settings",
                        onTap: () {
                          Get.toNamed(AppRoutes.customerSettingScreen);
                        },
                      ),
                      ProfileScreenCard(
                        text: "Contact Support",
                        onTap: () {
                          Get.toNamed(AppRoutes.contactSupportScreen);
                        },
                      ),
                      ProfileScreenCard(
                        text: "Logout",
                        onTap: () {
                          logOutDialog();
                
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}

class ProfileScreenCard extends StatelessWidget {
  const ProfileScreenCard({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        elevation: 0.5,
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: onTap,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: AppColors.white,
              child: ListTile(
                title: AppText(data: text),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
