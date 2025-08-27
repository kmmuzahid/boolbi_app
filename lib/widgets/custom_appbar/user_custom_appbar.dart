import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';

AppBar customerCustomAppBar({required String title, Widget? actions}) {
  return AppBar(
    centerTitle: true,
    title: AppText(
        data: title,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 20),
    foregroundColor: Colors.white,
    backgroundColor: AppColors.primary,
    actions: [actions ?? const SizedBox()],
  );
}
