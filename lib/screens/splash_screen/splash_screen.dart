import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/screens/splash_screen/controllers/splash_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    AppSize.size = size;
    return GetBuilder(
        init: SplashScreenController(),
        builder: (controller) {
          return Container(
            height: AppSize.size.height,

          width: AppSize.size.width,
            
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
            
                  image: AssetImage(AssetsImagesPath.designBackground),fit: BoxFit.fill),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppImage(
                    height: AppSize.height(value: 250),
                    path: AssetsImagesPath.splashLogo,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
