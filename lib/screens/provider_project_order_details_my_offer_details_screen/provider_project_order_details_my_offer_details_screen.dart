import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/provider_project_order_details_my_offer_details_screen/controllers/provider_project_order_details_my_offer_details_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_appbar/user_custom_appbar.dart';

class ProviderProjectOrderDetailsMyOfferDetailsScreen extends StatelessWidget {
  const ProviderProjectOrderDetailsMyOfferDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ProviderProjectOrderDetailsMyOfferDetailsScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "My Offer"),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    margin: const EdgeInsets.all(10),
                    height: 250,
                    width: AppSize.size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              AssetsImagesPath.demoImage2,
                            ))),
                    // child: Container(
                    //   height: 50,
                    //   width: 130,
                    //   // padding:
                    //   //     EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    //   alignment: Alignment.center,
                    //   decoration: const BoxDecoration(
                    //       color: AppColors.greenColor,
                    //       borderRadius: BorderRadius.only(
                    //           bottomLeft: Radius.circular(10),
                    //           topRight: Radius.circular(10))),
                    //   child: const AppText(
                    //     data: "View Profile",
                    //     color: AppColors.deepWhte,
                    //     fontWeight: FontWeight.w600,
                    //   ),
                    // ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              data: "Customer Name : Ajay",
                              color: AppColors.primary,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 10),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     width: AppSize.size.width,
                  //     padding: const EdgeInsets.symmetric(
                  //         horizontal: 15, vertical: 15),
                  //     decoration: BoxDecoration(
                  //       color: AppColors.greenColorStatus,
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //     child: const AppText(
                  //       data: "Delivered Complete ",
                  //       color: AppColors.deepWhte,
                  //       fontSize: 18,
                  //       fontWeight: FontWeight.w700,
                  //     ),
                  //   ),
                  // ),
                  // const Gap(height: 20),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: const Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       AppText(
                  //         data:
                  //             "Garden Maintenance - Lawn Mowing & Hedge Trimming",
                  //         color: AppColors.primary,
                  //         fontSize: 22,
                  //         fontWeight: FontWeight.w600,
                  //         overflow: TextOverflow.ellipsis,
                  //         maxLines: 2,
                  //       ),
                  //     ],
                  //   ),
                  // ),
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
                                    data: "Start Date",
                                    color: AppColors.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.start,
                                  ),
                                  Gap(height: 10),
                                  AppText(
                                    data: "End Date",
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
                                    data: "Project Cost",
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
                                    data: ": 18 August 2025",
                                    color: AppColors.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.start,
                                  ),
                                  Gap(height: 10),
                                  AppText(
                                    data: ": 18 August 2025",
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
                                    data: ": \$1000",
                                    color: AppColors.greenColorStatus,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.start,
                                  ),
                                  Gap(height: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const Gap(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      alignment: Alignment.center,
                      width: AppSize.size.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xffEDEDEF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const AppText(
                        data:
                            "The Total Cost is Outlined Below and includes a 5% service fee charged by Boolbi upon acceptance of the offer.",
                        color: AppColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Gap(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          data: "Total Project Cost",
                          color: AppColors.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                        Gap(width: 5),
                        AppText(
                          data: "\$1050",
                          color: AppColors.greenColorStatus,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(height: 10),
                        Row(
                          children: [
                            AppText(
                              data: "Dear Customer,",
                              color: AppColors.primary.withAlpha(100 * 2),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        const Gap(height: 10),
                        AppText(
                          data:
                              "I came across your posting regarding garden \nmaintenance work and would be happy to assist you.\n \nBased on the details provided, here is my offer:\nServices Included:- \nLawn mowing (~200 m²)\n-Hedge trimming (approx. 15 m)\n-Weeding flower beds\n-General garden clean-up (leaves, debris)\n \nEquipment:\nI will bring my own professional gardening tools and equipment (lawn mower, trimmer, hedge cutter, rake, etc.).",
                          color: AppColors.primary.withAlpha(100 * 2),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),

                  const Gap(height: 20),
                  // Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Photos :",
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

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: Column(
                  //     children: [
                  //       Row(
                  //         children: [
                  //           Expanded(
                  //             child: GestureDetector(
                  //               onTap: () {
                  //                 // Get.toNamed(
                  //                 //     AppRoutes.providerUpdateOfferScreen);
                  //                 // Get.closeAllDialogs();
                  //               },
                  //               child: Container(
                  //                 margin:
                  //                     EdgeInsets.all(AppSize.width(value: 5)),
                  //                 padding:
                  //                     EdgeInsets.all(AppSize.width(value: 5)),
                  //                 width: Get.width,
                  //                 height: AppSize.height(value: 50),
                  //                 alignment: Alignment.center,
                  //                 decoration: BoxDecoration(
                  //                     border: Border.all(
                  //                       color: AppColors.primary,
                  //                     ),
                  //                     color: AppColors.white,
                  //                     borderRadius: BorderRadius.circular(
                  //                         AppSize.width(value: 8.0))),
                  //                 child: const AppText(
                  //                   data: "Withdraw",
                  //                   fontSize: 18,
                  //                   fontWeight: FontWeight.w700,
                  //                   color: AppColors.primary,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //           Gap(width: 5),
                  //           Expanded(
                  //             child: GestureDetector(
                  //               onTap: () {
                  //                 Get.toNamed(
                  //                     AppRoutes.providerUpdateOfferScreen);
                  //                 // Get.closeAllDialogs();
                  //               },
                  //               child: Container(
                  //                 margin:
                  //                     EdgeInsets.all(AppSize.width(value: 5)),
                  //                 padding:
                  //                     EdgeInsets.all(AppSize.width(value: 5)),
                  //                 width: Get.width,
                  //                 height: AppSize.height(value: 50),
                  //                 alignment: Alignment.center,
                  //                 decoration: BoxDecoration(
                  //                     border: Border.all(
                  //                       color: AppColors.primary,
                  //                     ),
                  //                     color: AppColors.white,
                  //                     borderRadius: BorderRadius.circular(
                  //                         AppSize.width(value: 8.0))),
                  //                 child: const AppText(
                  //                   data: "Update",
                  //                   fontSize: 18,
                  //                   fontWeight: FontWeight.w700,
                  //                   color: AppColors.primary,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //       GestureDetector(
                  //         onTap: () {
                  //           Get.toNamed(AppRoutes.conversationScreen);
                  //         },
                  //         child: Container(
                  //           margin: EdgeInsets.all(AppSize.width(value: 5)),
                  //           padding: EdgeInsets.all(AppSize.width(value: 5)),
                  //           width: Get.width,
                  //           height: AppSize.height(value: 50),
                  //           alignment: Alignment.center,
                  //           decoration: BoxDecoration(
                  //               border: Border.all(color: AppColors.primary),
                  //               color: AppColors.primary,
                  //               borderRadius: BorderRadius.circular(
                  //                 AppSize.width(value: 8.0),
                  //               )),
                  //           child: const AppText(
                  //             data: "Message",
                  //             fontSize: 18,
                  //             fontWeight: FontWeight.w700,
                  //             color: AppColors.white,
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  const Gap(height: 20),
                ],
              ),
            ),
          );
        });
  }
}
