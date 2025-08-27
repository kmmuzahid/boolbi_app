import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/navigation_screen/widgets/custom_appbar.dart';
import 'package:boolbi_app/screens/customer_faq_screen/controller/user_faq_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

class UserFaqScreen extends StatelessWidget {
  const UserFaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserFaqScreenController>(
      init: UserFaqScreenController(),
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
              child: Column(
                children: [
                  Row(
                    children: [
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
                        data: "Frequently Asked Questions",
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      )
                    ],
                  ),
                  const Gap(height: 30),
                  Expanded(
                    child: Obx(
                      () => controller.isLoading.value
                          ? const Center(
                              child: CircularProgressIndicator(
                                color: Colors.black,
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 0),
                              child: ListView.builder(
                                controller: controller.scrollController,
                                itemCount: controller.faqList.length,
                                itemBuilder: (context, index) {
                                  final faq = controller.faqList[index];
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AppText(
                                        // data: "1. What os SwipBuy?",
                                        data: "${index + 1}. ${faq.question ?? ""}",

                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.black500,
                                      ),
                                      const SizedBox(height: 5),
                                      AppText(
                                        // data: "SwipBuy is a platform that connects businesses with qualified, on-demand professionals for temporary or part-time work. Our app makes it easy for businesses to find professionals when they need extra help or to cover staff shortages",
                                        data: faq.answer ?? "",

                                        fontSize: 18,
                                        color: AppColors.black500,
                                      ),
                                      const Gap(height: 15),
                                    ],
                                  );
                                },
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
