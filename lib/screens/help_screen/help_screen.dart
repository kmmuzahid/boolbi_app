import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/help_screen/controller/help_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HelpScreenController>(
      init: HelpScreenController(), // Initialize controller
      builder: (controller) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: AppColors.deepWhte,
          ),
          child: Scaffold(
              backgroundColor: AppColors.deepWhte,
              appBar: PreferredSize(
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
                        BackButton(
                          onPressed: () {
                            SystemChrome.setPreferredOrientations([
                              // DeviceOrientation.portraitDown, // Lock to portrait mode
                              DeviceOrientation
                                  .portraitUp, // Lock to portrait mode
                            ]).then((_) {
                              Get.back();
                            });
                          },
                        ),
                        const Expanded(
                          child: AppText(
                            data: "Help",
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
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              body: const Placeholder(),
              // body: YoutubePlayer(
              //   controller: controller.controller,
              //   showVideoProgressIndicator: true,
              //   onReady: () {
              //     print("Player is ready.");
              //   },
              // )
              ),
        );
      },
    );
  }
}
