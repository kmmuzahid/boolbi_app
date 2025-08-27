import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/provider_account_verification_edit_screen/controllers/provider_account_verification_edit_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/custom_appbar/user_custom_appbar.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProviderAccountVerificationEditScreen extends StatelessWidget {
  const ProviderAccountVerificationEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ProviderAccountVerificationEditScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "Informations"),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const Gap(height: 20),
                        const AppText(
                          data:
                              "Provide your Trade License and Identity Card To Completed the verification.",
                          color: AppColors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        const Gap(height: 20),
                        const Gap(height: 20),
                        const Row(
                          children: [
                            AppText(
                              data: "Upload Trade License Documents ",
                              color: AppColors.black300,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                        const Gap(height: 10),
                        Obx(
                          () => Container(
                            height: AppSize.height(value: 55),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: controller.isImgValidSignature.value
                                        ? AppColors.validationError
                                        : AppColors.grey800),
                                color: AppColors.deepWhte,
                                borderRadius: BorderRadius.circular(15)),
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                if (controller.localImagePathSignature.value !=
                                        "" ||
                                    controller
                                            .argDataImagePathSignature.value !=
                                        "")
                                  Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: AppColors.grey800),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: AppText(
                                                    data: controller
                                                            .localImagePathSignature
                                                            .value
                                                            .isNotEmpty
                                                        ? controller
                                                            .localImagePathSignature
                                                            .value
                                                            .split("/")
                                                            .last
                                                        : controller
                                                            .argDataImagePathSignature
                                                            .value
                                                            .split("-")
                                                            .last,
                                                    // data: controller.localImagePathSignature.value,
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  controller
                                                      .localImagePathSignature
                                                      .value = "";
                                                  controller
                                                      .argDataImagePathSignature
                                                      .value = "";
                                                },
                                                icon: const Icon(
                                                  Icons.close,
                                                  color: AppColors.primary,
                                                ),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                if (controller.localImagePathSignature.value ==
                                        "" &&
                                    controller
                                            .argDataImagePathSignature.value ==
                                        "")
                                  const Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: AppText(
                                        data: "No File Choosen",
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.grey700,
                                      ),
                                    ),
                                  ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: GestureDetector(
                                      onTap: () {
                                        controller.clickImagePic(
                                            controller.localImagePathSignature);
                                      },
                                      child: Container(
                                        width: 100,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: AppColors.grey800),
                                            color: AppColors.grey400,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const AppText(
                                          data: "Choose File",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Gap(height: 5),
                        const Row(
                          children: [
                            Expanded(
                              child: AppText(
                                data: "Please Upload PDF Format Only",
                                color: AppColors.grey800,
                                fontSize: 12,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const Gap(height: 20),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Container(
                            alignment: Alignment.center,
                            width: AppSize.size.width,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            decoration: BoxDecoration(
                              color: const Color(0xffEDEDEF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Obx(
                                  () => Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor: AppColors.grey900,
                                    ),
                                    child: Checkbox(
                                      activeColor: AppColors.grey50,
                                      visualDensity: const VisualDensity(
                                        horizontal: -4,
                                        vertical: -4,
                                      ),
                                      side: WidgetStateBorderSide.resolveWith(
                                        (states) {
                                          if (states.contains(
                                            WidgetState.selected,
                                          )) {
                                            return const BorderSide(
                                              color: AppColors.grey900,
                                            );
                                          } else {
                                            return const BorderSide(
                                              color: AppColors.grey900,
                                            );
                                          }
                                        },
                                      ),
                                      value: controller.isRememberMe.value,
                                      checkColor: AppColors.grey900,
                                      fillColor: const WidgetStatePropertyAll(
                                          AppColors.grey50),
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                          color: AppColors.grey900,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                            AppSize.width(value: 5.0)),
                                      ),
                                      onChanged: (value) {
                                        controller.isRememberMe.value = value!;
                                      },
                                    ),
                                  ),
                                ),
                                Gap(width: 5),
                                Flexible(
                                  child: const AppText(
                                    data:
                                        "if you earn less than or equal to 556 Euro, you do not have to upload your business license",
                                    color: AppColors.grey900,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Gap(height: 20),
                        // Upload Image button
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            children: [
                              AppText(
                                data: "Update Photo of your Identity Card :",
                                fontSize: 16,
                                color: AppColors.primary,
                                fontWeight: FontWeight.w800,
                              ),
                            ],
                          ),
                        ),
                        const Gap(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: GestureDetector(
                            onTap: () {
                              // controller.clickImagePic(
                              //     controller.localImagePathSignature);
                            },
                            child: Container(
                              width: Get.width,
                              height: AppSize.width(value: 70.0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.primary),
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.file_upload_outlined,
                                    color: AppColors.primary,
                                  ),
                                  Gap(width: 10),
                                  AppText(
                                    data: "Upload Picture",
                                    fontSize: 18,
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
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
                          data: "Saved & Changed",
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
