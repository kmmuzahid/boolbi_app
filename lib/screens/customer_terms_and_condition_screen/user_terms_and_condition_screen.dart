import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/navigation_screen/widgets/custom_appbar.dart';
import 'package:boolbi_app/screens/customer_terms_and_condition_screen/controller/user_terms_and_condition_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

class UserTermsAndConditionScreen extends StatelessWidget {
  const UserTermsAndConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: UserTermsAndConditionScreenController(),
      builder: (controller) {
        return AnnotatedRegion(
          value: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: AppColors.deepWhte,
          ),
          child: Scaffold(
            backgroundColor: AppColors.halkaGrey,
            // drawer: const CustomDrawerWidget(),
            appBar: customerCustomAppBar(),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: AppSize.width(value: 20)),
                          child: AppImage(
                            height: AppSize.size.height * 0.035,
                            // path: AssetsIconsPath.back,
                          ),
                        ),
                      ),
                      const AppText(
                        data: "Terms And Conditions",
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      )
                    ]),
                    const Gap(height: 20),
                    Obx(
                      () => controller.isLoading.value
                          ? const Center(
                              child: CircularProgressIndicator(
                              color: Colors.black,
                            ))
                          : Padding(
                              padding: EdgeInsets.all(AppSize.width(value: 20.0)),
                              child: SingleChildScrollView(
                                child: SizedBox(
                                  width: AppSize.size.width,
                                  child: HtmlWidget(
                                    controller.termsAndConditionsData.value,
                                    textStyle: const TextStyle(fontSize: 16, color: Colors.black),
                                  ),
                                  // child: HtmlWidget(controller.aboutUsData.value
                                  //     // controller.aboutUsData.value,
                                  //     // customStylesBuilder: (element) {
                                  //     //   if (element.localName == 'span' &&
                                  //     //       element.attributes['style']
                                  //     //               ?.contains('white-space:pre-wrap') ==
                                  //     //           true) {
                                  //     //     return {'white-space': 'normal'};
                                  //     //   }
                                  //     //   return null;
                                  //     // },
                                  //     // textStyle: const TextStyle(
                                  //     //     fontSize: 16, color: Colors.black),
                                  //     ),
                                ),
                              )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
