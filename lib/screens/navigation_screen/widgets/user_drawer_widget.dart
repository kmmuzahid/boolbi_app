import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class UserDrawerCard extends StatelessWidget {
  const UserDrawerCard({
    super.key,
    required this.text,
    required this.iconPath,
    this.onTap,
  });
  final String text;
  final String iconPath;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Get.width,
        height: AppSize.width(value: 35.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(AppSize.width(value: 8))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Gap(width: 10),
            AppImage(
              path: iconPath,
              height: 18,
            ),
            const Gap(width: 8),
            Expanded(
              child: AppText(
                data: text,
                fontSize: 16,
                color: AppColors.white,
                fontWeight: FontWeight.w500,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
