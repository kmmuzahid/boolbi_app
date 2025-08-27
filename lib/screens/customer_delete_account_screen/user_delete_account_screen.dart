import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/navigation_screen/widgets/custom_appbar.dart';
import 'package:boolbi_app/screens/customer_delete_account_screen/controllers/user_delete_account_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

class UserDeleteAccountScreen extends StatelessWidget {
  const UserDeleteAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: UserDeleteAccountScreenController(),
      builder: (controller) {
        return Scaffold(
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
                      data: "Delete Account",
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    )
                  ]),
                  const Gap(height: 20),
                  Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        const Gap(height: 30),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          child: AppText(
                            data: "Please enter your password to confirm account removal",
                            color: AppColors.grey700,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        const Gap(height: 20),
                        AppInputWidgetTwo(
                          controller: controller.passwordTextEditingController,
                          hintText: "Password",
                          filled: true,
                          isPassWord: true,
                          maxLines: 1,
                          fillColor: AppColors.deepWhte,
                          textInputAction: TextInputAction.done,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                        const Gap(height: 40),
                        Obx(
                          () => GestureDetector(
                            onTap: () {
                              controller.clickDeleteAccountButton();
                            },
                            child: Container(
                              width: Get.width,
                              height: AppSize.width(value: 50.0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(color: const Color(0xffFF3030), borderRadius: BorderRadius.circular(AppSize.width(value: 8))),
                              child: controller.isLoading.value
                                  ? const Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    )
                                  : const AppText(
                                      data: "Delete Account",
                                      fontSize: 18,
                                      color: AppColors.grey50,
                                      fontWeight: FontWeight.w600,
                                    ),
                            ),
                          ),
                        ),
                        const Gap(height: 40),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          child: AppText(
                            data: "This will delete your personal data permanently from your system. This action can not be undone.",
                            color: AppColors.grey700,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
