import 'package:boolbi_app/const/images/app_asset_icons.dart';
import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/customer_runing_project_delivery_request_screen/controllers/customer_runing_project_delivery_request_screen_controller.dart';
import 'package:boolbi_app/screens/customer_runing_project_delivery_request_screen/widget/customer_delivery_request_card.dart';
import 'package:boolbi_app/screens/customer_runing_project_delivery_request_screen/widget/accept_delivery_request_confirm_dialog.dart';
import 'package:boolbi_app/screens/customer_runing_project_delivery_request_screen/widget/extend_dailog_box.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/log_print/app_log.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_appbar/user_custom_appbar.dart';

class CustomerRuningProjectDeliveryRequestScreen extends StatelessWidget {
  const CustomerRuningProjectDeliveryRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerRuningProjectDeliveryRequestScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "Delivery Request"),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(height: 20),
                  const CustomerDeliveryRequestCard(),
                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Additional Information :",
                          fontSize: 16,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ),

                  const Gap(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: AppText(
                      data:
                          "I Specialize in Creating user-centered digital experiences that are visuall",
                      color: AppColors.primary,
                      fontSize: 15.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Project Link :",
                          fontSize: 16,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ),
                  // const Gap(height: 10),
                  const Gap(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: AppText(
                      data:
                          "I Specialize in Creating user-centered digital experiences that are visuall",
                      color: AppColors.primary,
                      fontSize: 15.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(10),
                  //     child: AppInputWidgetTwo(
                  //       // controller: controller.emailTextEditingController,
                  //       hintText: "website design",
                  //       cursorColor: AppColors.primary,
                  //       border: OutlineInputBorder(
                  //           borderSide: const BorderSide(
                  //             color: AppColors.primary,
                  //           ),
                  //           borderRadius: BorderRadius.circular(10)),
                  //       filled: true,
                  //       isEmail: true,
                  //       fillColor: AppColors.deepWhte,
                  //       textInputAction: TextInputAction.next,
                  //       contentPadding: const EdgeInsets.symmetric(
                  //           horizontal: 20, vertical: 10),
                  //     ),
                  //   ),
                  // ),
                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Invoice :",
                          fontSize: 16,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      suffixIcon: IconButton(
                          onPressed: () {
                            appLog("Download The Pdf File");
                            // controller.callDateOfBirthSet();
                          },
                          icon: const Icon(
                            Icons.file_download_outlined,
                            color: AppColors.primary,
                          )),
                      prefix: const Padding(
                        padding: EdgeInsets.all(5),
                        child: AppImage(
                          path: AssetsIconsPath.pdfImage,
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Project Images :",
                          color: AppColors.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 20),
                  SizedBox(
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5, // One column (horizontal scroll)
                          childAspectRatio:
                              1.0, // Adjust the aspect ratio as needed
                        ),
                        // itemCount: controller.localImagePath.length,
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: FittedBox(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: FittedBox(
                                    child: AppImage(
                                      isFullScreen: true,
                                      path: AssetsImagesPath.demoImage,

                                      // filePath: controller
                                      //     .localImagePath[index],
                                      width: AppSize.height(value: 60),
                                      height: AppSize.height(value: 60),
                                      color: AppColors.primary,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const Gap(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                      onTap: () {
                        acceptDeliveryRequestConfirmDialog();
                        // Get.toNamed(AppRoutes.welcomePage);
                      },
                      child: Container(
                        width: Get.width,
                        height: AppSize.width(value: 50.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(
                            AppSize.width(value: 8),
                          ),
                        ),
                        child:
                            // controller.isLoading.value
                            //     ? const Center(
                            //         child: CircularProgressIndicator(
                            //           color: Colors.white,
                            //         ),
                            //       )
                            //     :
                            const AppText(
                          data: "Accept Dellivery Request",
                          fontSize: 18,
                          color: AppColors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              // extendDialogBox(controller);
                              // Get.toNamed(AppRoutes.welcomePage);
                            },
                            child: Container(
                              width: Get.width,
                              height: AppSize.width(value: 50.0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.redColor),
                                // color: AppColors.primary,
                                borderRadius: BorderRadius.circular(
                                  AppSize.width(value: 8),
                                ),
                              ),
                              child:
                                  // controller.isLoading.value
                                  //     ? const Center(
                                  //         child: CircularProgressIndicator(
                                  //           color: Colors.white,
                                  //         ),
                                  //       )
                                  //     :
                                  const AppText(
                                data: "Reject",
                                fontSize: 18,
                                color: AppColors.redColor,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                        const Gap(width: 10),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              extendDialogBox(controller);
                              // Get.toNamed(AppRoutes.welcomePage);
                            },
                            child: Container(
                              width: Get.width,
                              height: AppSize.width(value: 50.0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.primary),
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(
                                  AppSize.width(value: 8),
                                ),
                              ),
                              child:
                                  // controller.isLoading.value
                                  //     ? const Center(
                                  //         child: CircularProgressIndicator(
                                  //           color: Colors.white,
                                  //         ),
                                  //       )
                                  //     :
                                  const AppText(
                                data: "Extend",
                                fontSize: 18,
                                color: AppColors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 30)
                ],
              ),
            ),
          );
        });
  }
}
