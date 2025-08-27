import 'package:boolbi_app/const/images/app_asset_icons.dart';
import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/provider_account_verification_screen/controllers/provider_account_verification_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/custom_appbar/user_custom_appbar.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProviderAccountVerificationScreen extends StatelessWidget {
  const ProviderAccountVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ProviderAccountVerificationScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "Account Verifications"),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        // const Gap(height: 20),
                        // const AppText(
                        //   data:
                        //       "Provide your Trade License and Identity Card To Completed the verification.",
                        //   color: AppColors.primary,
                        //   fontSize: 16,
                        //   fontWeight: FontWeight.w600,
                        // ),

                        const Gap(height: 20),
                        const Row(
                          children: [
                            AppText(
                              data: "Trade License Documents ",
                              color: AppColors.black300,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        const Gap(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: AppInputWidgetTwo(
                            onTap: () {
                              // controller.callDateOfBirthSet();
                            },
                            // controller: controller.dateOfBirthTextEditingController,
                            hintText: "document.pdf",
                            readOnly: true,
                            fillColor: AppColors.white,
                            // titleColor: AppColors.dark200,
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: AppColors.primary),
                                borderRadius: BorderRadius.circular(
                                  AppSize.width(value: 10.0),
                                )),
                            errBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: AppColors.error)),
                            // suffixIcon: IconButton(
                            //     onPressed: () {
                            //       appLog("Download The Pdf File");
                            //       // controller.callDateOfBirthSet();
                            //     },
                            //     icon: const Icon(
                            //       Icons.file_download_outlined,
                            //       color: AppColors.primary,
                            //     )),
                            prefix: const Padding(
                              padding: EdgeInsets.all(5),
                              child: AppImage(
                                path: AssetsIconsPath.pdfImage,
                              ),
                            ),
                          ),
                        ),
                        const Gap(height: 10),

                        const Gap(height: 20),
                        // Upload Image button
                        const Row(
                          children: [
                            AppText(
                              data: "Identify Card: ",
                              color: AppColors.black300,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        // const Gap(height: 10),
                        // const Gap(height: 10),

                        const Gap(height: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: AppImage(
                            height: 200,
                            width: AppSize.size.width,
                            path: AssetsImagesPath.id1,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Gap(height: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: AppImage(
                            height: 200,
                            width: AppSize.size.width,
                            path: AssetsImagesPath.id2,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ///////// Button
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(
                            AppRoutes.providerAccountVerificationEditScreen);
                        // adminRequireDialogBox();
                      },
                      child: Container(
                        width: Get.width,
                        height: AppSize.width(value: 50.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius:
                                BorderRadius.circular(AppSize.width(value: 8))),
                        child: const AppText(
                          data: "Add or Edit",
                          fontSize: 18,
                          color: AppColors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
