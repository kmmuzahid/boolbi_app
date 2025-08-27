import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/navigation_screen/widgets/custom_appbar_2.dart';
import 'package:boolbi_app/screens/report_problem_screen/controller/report_problem_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_three.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

class ReportProblemScreen extends StatelessWidget {
  const ReportProblemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ReportProblemScreenController(),
      builder: (controller) {
        return AnnotatedRegion(
          value: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: AppColors.deepWhte,
          ),
          child: Scaffold(
              backgroundColor: AppColors.halkaGrey,
              appBar: customAppBar2(text: "Report Problem"),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      // AppText(
                      //   data: "Write down the problem you are facing",
                      //   color: AppColors.grey800,
                      // ),
                      AppInputWidgetFour(
                        controller: controller.message,
                        minLines: 10,
                        keyboardType: TextInputType.text,
                        maxLines: 100,
                        title: "Write down the problem you are facing",
                        fillColor: AppColors.deepWhte,
                        titleColor: AppColors.black300,
                        textInputAction: TextInputAction.done,
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: AppColors.black200),
                            borderRadius: BorderRadius.circular(
                              AppSize.width(value: 10.0),
                            )),
                        errBorder: const OutlineInputBorder(borderSide: BorderSide(color: AppColors.error)),
                      ),
                      const Gap(height: 20),
                      Obx(
                        () => GestureDetector(
                          onTap: () {
                            if (controller.isLoading.value == false) {
                              controller.clickToSendReposrtButton();
                            }
                          },
                          child: Container(
                            width: Get.width,
                            height: AppSize.width(value: 50.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(AppSize.width(value: 8))),
                            child: controller.isLoading.value
                                ? const Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                                  )
                                : const AppText(
                                    data: "Send Report",
                                    fontSize: 18,
                                    color: AppColors.grey50,
                                    fontWeight: FontWeight.w600,
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        );
      },
    );
  }
}
