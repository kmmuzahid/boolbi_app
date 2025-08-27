import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/customer_post_job_my_project_post_details_screen/controllers/customer_post_job_my_project_post_details_screen_controller.dart';
import 'package:boolbi_app/screens/customer_post_offer_request_details_screen/widget/offer_request_confirm_dialog_box.dart';
import 'package:boolbi_app/screens/customer_runing_project_delivery_request_screen/widget/accept_delivery_request_confirm_dialog.dart';
import 'package:boolbi_app/screens/customer_runing_project_delivery_request_screen/widget/withdraw_confirm_dialog.dart';
import 'package:boolbi_app/screens/provider_offer_screen/widget/my_offer_confirm_dialog_box.dart';
import 'package:boolbi_app/screens/provider_service_requests_details_screen/widget/approve_service_request_dialogbox.dart';
import 'package:boolbi_app/screens/provider_service_requests_details_screen/widget/decline_service_request_dialogbox.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/log_print/app_log.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_appbar/user_custom_appbar.dart';

class CustomerPostJobMyProjectPostDetailsScreen extends StatelessWidget {
  const CustomerPostJobMyProjectPostDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerPostJobMyProjectPostDetailsScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "View Details"),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    margin: const EdgeInsets.all(20),
                    height: 250,
                    width: AppSize.size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              AssetsImagesPath.gardenImg,
                            ))),
                    // child: GestureDetector(
                    //   onTap: () {
                    //     Get.toNamed(
                    //         AppRoutes.customerPostOfferRequestListScreen);
                    //     // appLog("Clicked");
                    //   },
                    //   child: Container(
                    //     height: 50,
                    //     width: 130,
                    //     // padding:
                    //     //     EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    //     alignment: Alignment.center,
                    //     decoration: const BoxDecoration(
                    //         color: AppColors.greenColorStatus,
                    //         borderRadius: BorderRadius.only(
                    //             bottomLeft: Radius.circular(10),
                    //             topRight: Radius.circular(10))),
                    //     child: const AppText(
                    //       fontSize: 20,
                    //       data: "12 Offer",
                    //       color: AppColors.deepWhte,
                    //       fontWeight: FontWeight.w600,
                    //     ),
                    //   ),
                    // ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(10),
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(10),
                  //     child: AppImage(
                  //       path: AssetsImagesPath.demoImage2,
                  //       // url: item.primary ?? "",
                  //       fit: BoxFit.fill,
                  //       width: AppSize.size.width,
                  //     ),
                  //   ),
                  // ),
                  // const Gap(height: 10),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 10),
                  //   child: Row(
                  //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Expanded(
                  //         child: Container(
                  //           alignment: Alignment.center,
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 15, vertical: 10),
                  //           decoration: BoxDecoration(
                  //             color: const Color(0xffEDEDEF),
                  //             borderRadius: BorderRadius.circular(5),
                  //           ),
                  //           child: const AppText(
                  //             data: "Withdrawal Limited Company",
                  //             color: AppColors.primary,
                  //             fontSize: 18,
                  //             fontWeight: FontWeight.w600,
                  //             overflow: TextOverflow.ellipsis,
                  //             maxLines: 1,
                  //           ),
                  //         ),
                  //       ),
                  //       const Gap(width: 10),
                  //       Container(
                  //         padding: const EdgeInsets.symmetric(
                  //             horizontal: 15, vertical: 10),
                  //         decoration: BoxDecoration(
                  //           color: AppColors.primary,
                  //           borderRadius: BorderRadius.circular(5),
                  //         ),
                  //         child: const Row(
                  //           children: [
                  //             Icon(
                  //               Icons.person_outline,
                  //               color: AppColors.white,
                  //               size: 16,
                  //             ),
                  //             AppText(
                  //               data: "12 Offer",
                  //               color: AppColors.white,
                  //               fontSize: 15,
                  //               fontWeight: FontWeight.w600,
                  //               overflow: TextOverflow.ellipsis,
                  //               maxLines: 1,
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(
                            AppRoutes.customerPostOfferRequestListScreen);
                      },
                      child: Material(
                        elevation: 2,
                        color: AppColors.greenColorStatus,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        child: Container(
                          height: 50,
                          // width: 130,
                          // padding:
                          //     EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              )),
                          child: const AppText(
                            fontSize: 20,
                            data: "12 Offer",
                            color: AppColors.deepWhte,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: AppText(
                            data:
                                "Garden Maintenance - Lawn Mowing & Hedge Trimming",
                            color: AppColors.primary,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    data: "Category",
                                    color: AppColors.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.start,
                                  ),
                                  Gap(height: 10),
                                  AppText(
                                    data: "Sub Category",
                                    color: AppColors.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.start,
                                  ),
                                  Gap(height: 10),
                                  AppText(
                                    data: "Location",
                                    color: AppColors.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.start,
                                  ),
                                  Gap(height: 10),
                                  AppText(
                                    data: "Deadline",
                                    color: AppColors.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    data: ": Home & Garden",
                                    color: AppColors.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.start,
                                  ),
                                  Gap(height: 10),
                                  AppText(
                                    data: ": Garden Maintenance",
                                    color: AppColors.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.start,
                                  ),
                                  Gap(height: 10),
                                  AppText(
                                    data: ": Berlin, zehlendrof",
                                    color: AppColors.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.start,
                                  ),
                                  Gap(height: 10),
                                  AppText(
                                    data: ": 18 July 2025",
                                    color: AppColors.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: AppText(
                      data:
                          "We are looking for a reliable and experienced gardener to perform regular maintenance work in our private garden",
                      color: AppColors.primary,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Gap(height: 10),

                  // Now bullet points with bold titles
                  _buildServiceBullet(
                    "Tasks Include:",
                    "I conduct comprehensive user research to understand your target audience's needs, behaviors, and pain points. By gathering insights, I ensure the designs are both practical and aligned with user expectations.",
                  ),
                  const Gap(height: 10),
                  _buildServiceBullet(
                    "Requirements:",
                    "I build interactive wireframes and prototypes that bring your ideas to life before development. These tools allow stakeholders to visualize the end product early in the design process and provide feedback for iterative improvements.",
                  ),
                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Images :",
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
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Get.close();
                            Get.toNamed(
                                AppRoutes.customerEditProjectPostScreen);
                          },
                          child: Container(
                            margin: EdgeInsets.all(AppSize.width(value: 5)),
                            padding: EdgeInsets.all(AppSize.width(value: 5)),
                            width: Get.width,
                            height: AppSize.height(value: 50),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.primary),
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(
                                  AppSize.width(value: 8.0),
                                )),
                            child: const AppText(
                              data: "Edit Job Post",
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        const Gap(height: 0),
                        GestureDetector(
                          onTap: () {
                            // myOfferConfirmDialogBox();
                            // offerRequestConfirmDialogBox();
                            withdrawConfirmDialog();
                            // approveServiceRequestConfirmDialogBox();
                            // declineServiceRequestConfirmDialogBox();

                            // Get.closeAllDialogs();
                          },
                          child: Container(
                            margin: EdgeInsets.all(AppSize.width(value: 5)),
                            padding: EdgeInsets.all(AppSize.width(value: 5)),
                            width: Get.width,
                            height: AppSize.height(value: 50),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.primary,
                                ),
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(
                                    AppSize.width(value: 8.0))),
                            child: const AppText(
                              data: "Withdraw",
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 20),
                ],
              ),
            ),
          );
        });
  }
}

// Helper function for bullet points
Widget _buildServiceBullet(String title, String description) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText(
          data: "• ",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                data: title,
                color: AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              const Gap(height: 5),
              AppText(
                data: description,
                color: AppColors.primaryWithOpacityW6,
                fontSize: 15.5,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
