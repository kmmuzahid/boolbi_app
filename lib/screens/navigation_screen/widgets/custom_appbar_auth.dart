import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBarAuth extends StatelessWidget implements PreferredSizeWidget {
  final String? text;

  const CustomAppBarAuth({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: Container(
          padding: const EdgeInsets.all(13),
          decoration: BoxDecoration(
            // color: AppColors.grey50,
            borderRadius: BorderRadius.circular(50),
          ),
          child: const AppImage(
            path: AssetsImagesPath.backButton,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      backgroundColor: AppColors.primaryBackgroud,
      surfaceTintColor: Colors.transparent,
      title: AppText(
        data: text ?? "",
        // gradient: AppColors.gradientColors,
        // style: const TextStyle(
        color: AppColors.primary,
        fontSize: 20,
        fontWeight: FontWeight.w800,
      ),
      // ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
