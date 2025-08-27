import 'package:boolbi_app/const/images/app_asset_icons.dart';
import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/customer_completed_project_delivery_request_screen/controllers/customer_completed_project_delivery_request_screen_controller.dart';
import 'package:boolbi_app/screens/customer_completed_project_delivery_request_screen/widget/customer_completed_project_order_progress_card.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/log_print/app_log.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_appbar/user_custom_appbar.dart';

class CustomerCompletedProjectDeliveryRequestScreen extends StatelessWidget {
  const CustomerCompletedProjectDeliveryRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerCompletedProjectDeliveryRequestScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "Project Details"),
            bottomNavigationBar:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: GestureDetector(
                      onTap: () {
                        appLog("Click");
                        // extendDialogBox(controller);
                        Get.toNamed(AppRoutes.contactSupportScreen);
                      },
                      child: Container(
                        width: Get.width,
                        height: AppSize.width(value: 50.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          // border: Border.all(color: AppColors.primary),
                          color: AppColors.completeReq,
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
                      data: "Contact Support",
                          fontSize: 18,
                          color: AppColors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(height: 20),
                  // const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 20),
                  //   child: AppText(
                  //       data: "Order No: #879FD34343FDF3",
                  //       color: AppColors.primary,
                  //       fontWeight: FontWeight.w900,
                  //       decoration: TextDecoration.underline,
                  //       decorationColor: AppColors.primary,
                  //       fontSize: 20),
                  // ),
                  const Gap(height: 20),
                  const CustomerCompletedProjectOrderProgressCard(),
                  const Gap(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                data: "Ordered By",
                                color: AppColors.primary,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                              Gap(height: 10),
                              AppText(
                                data: "Delivered Date",
                                color: AppColors.primary,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                              Gap(height: 10),
                              AppText(
                                data: "Total Price",
                                color: AppColors.primary,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                              Gap(height: 10),
                              AppText(
                                data: "Service Provider",
                                color: AppColors.primary,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                data: "10.02.2025",
                                color: AppColors.primaryWithOpacityW6,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                              const Gap(height: 10),
                              AppText(
                                data: "10.02.2025 03:36 PM",
                                color: AppColors.primaryWithOpacityW6,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                              const Gap(height: 10),
                              AppText(
                                data: "\$120",
                                color: AppColors.primaryWithOpacityW6,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                              const Gap(height: 10),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes
                                      .customerMyServiceRequestDetailsAgainDetailsScreen);
                                },
                                child: const AppText(
                                  data: "Service Provider Google",
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.primary,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Project Documentations :",
                          fontSize: 18,
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
                      data: "ssssjkfkhuahajunhsasasajnhsajioisjasjisajsssasassa",
                      color: AppColors.primary,
                      fontSize: 16,
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
                          fontSize: 18,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Flexible(
                          child: AppText(
                            data: "https://www.google.com/",
                            color: AppColors.primary,
                            fontSize: 15.5,
                            fontWeight: FontWeight.w500,
                            // textAlign: TextAlign.start,
                          ),
                        ),
                      ],
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
                          data: "Pdf Document :",
                          fontSize: 18,
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
                        // appLog(message)
                        // controller.callDateOfBirthSet();
                      },
                      // controller: controller.dateOfBirthTextEditingController,
                      hintText: "document.pdf",
                      readOnly: true,
                      fillColor: AppColors.white,
                      // titleColor: AppColors.dark200,
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: AppColors.primary),
                          borderRadius: BorderRadius.circular(
                            AppSize.width(value: 10.0),
                          )),
                      errBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.error)),
                      suffixIcon:
                          //  Obx(
                          //   () => controller.isLoadingDownloadProcess.value
                          //       ? const  Padding(
                          //         padding:  EdgeInsets.only(right: 15),
                          //         child: CupertinoActivityIndicator(
                          //             color: Colors.black,
                          //           ),
                          //       )
                          //       :
                          IconButton(
                              onPressed: () {
                                controller.downloadPDFFileFunction();
              
                                // appLog("Download The Pdf File");
                                // controller.callDateOfBirthSet();
                              },
                              icon: const Icon(
                                Icons.file_download_outlined,
                                color: AppColors.primary,
                              )),
                      // ),
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
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 20),
                  Container(
                    height: 300,
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
                  // const Gap(height: 20),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: GestureDetector(
                  //     onTap: () {
                  //       acceptDeliveryRequestConfirmDialog();
                  //       // Get.toNamed(AppRoutes.welcomePage);
                  //     },
                  //     child: Container(
                  //       width: Get.width,
                  //       height: AppSize.width(value: 50.0),
                  //       alignment: Alignment.center,
                  //       decoration: BoxDecoration(
                  //         color: Colors.green,
                  //         borderRadius: BorderRadius.circular(
                  //           AppSize.width(value: 8),
                  //         ),
                  //       ),
                  //       child:
                  //           // controller.isLoading.value
                  //           //     ? const Center(
                  //           //         child: CircularProgressIndicator(
                  //           //           color: Colors.white,
                  //           //         ),
                  //           //       )
                  //           //     :
                  //           const AppText(
                  //         data: "Accept Dellivery Request",
                  //         fontSize: 18,
                  //         color: AppColors.grey50,
                  //         fontWeight: FontWeight.w900,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  const Gap(height: 30),
                 
                  const Gap(height: 20)
                ],
              ),
            ),
          );
        });
  }
}
