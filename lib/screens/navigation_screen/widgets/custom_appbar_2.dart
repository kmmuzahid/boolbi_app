import 'package:flutter/material.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';


PreferredSize customAppBar2({required String text}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(AppSize.size.height * 0.071),
    child: SafeArea(
      child: Container(
        width: AppSize.size.width,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: AppColors.deepWhte,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const BackButton(),
            Expanded(
              child: AppText(
                data: text,
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: AppColors.black500,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),

            // Hidden Button To Align Title on Center
            BackButton(
              color: Colors.transparent,
              onPressed: () {},
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
