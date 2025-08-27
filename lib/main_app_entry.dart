import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/routes/app_routes_file.dart';
import 'package:boolbi_app/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MainAppEntry extends StatelessWidget {
  const MainAppEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.noTransition,
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      themeMode: ThemeMode.light,
      initialRoute: AppRoutes.initial,
      getPages: appRoutesFile,
    );
  }
}
