import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/customer_profile_screen/widget/delete_account_dialog_box.dart';
import 'package:boolbi_app/screens/customer_setting_screen/controllers/customer_setting_screen_controller.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/custom_appbar/user_custom_appbar.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerSettingScreen extends StatelessWidget {
  const CustomerSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerSettingScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "Settings"),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      const Gap(height: 20),
                      SettingScreenCard(
                        icon: Icons.vpn_key_outlined,
                        text: "Change Password",
                        onTap: () {
                          Get.toNamed(AppRoutes.changePasswordScreen);
                        },
                      ),
                      SettingScreenCard(
                        icon: Icons.language,
                        text: "language",
                        onTap: () {
                          Get.toNamed(AppRoutes.customerLanguageScreen);
                        },
                      ),
                      SettingScreenCard(
                        icon: Icons.privacy_tip_outlined,
                        text: "Privacy Policy",
                        onTap: () {},
                      ),
                      SettingScreenCard(
                        icon: Icons.event_note_outlined,
                        text: "Terms And Conditons",
                        onTap: () {},
                      ),
                      SettingScreenCard(
                        icon: Icons.delete_outline,
                        text: "Delete Account",
                        onTap: () {
                          deleteAccountDialogBox();
                        },
                        textColor: Colors.red,
                        iconColor: Colors.red,
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

class SettingScreenCard extends StatelessWidget {
  const SettingScreenCard({
    super.key,
    required this.text,
    this.icon,
    this.iconColor,
    this.textColor,
    this.onTap,
  });
  final String text;
  final IconData? icon;
  final Color? iconColor;
  final Color? textColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Material(
          elevation: 0.5,
          borderRadius: BorderRadius.circular(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: AppColors.white,
              child: ListTile(
                title:
                    AppText(data: text, color: textColor ?? AppColors.primary),
                // trailing: const Icon(Icons
                //     .keyboard_arrow_right_outlined),
                leading: Icon(
                  icon,
                  color: iconColor ?? AppColors.primary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
