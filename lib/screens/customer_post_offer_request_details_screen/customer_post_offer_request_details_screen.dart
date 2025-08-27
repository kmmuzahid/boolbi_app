import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/customer_offer_request_details_screen/widget/offer_request_confirm_dialog_box.dart';
import 'package:boolbi_app/screens/customer_post_offer_request_details_screen/controllers/customer_post_offer_request_details_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_appbar/user_custom_appbar.dart';

class CustomerPostOfferRequestDetailsScreen extends StatelessWidget {
  const CustomerPostOfferRequestDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerPostOfferRequestDetailsScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "Service Provider Apple"),
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
                              AssetsImagesPath.demoImage2,
                            ))),
                    child: Container(
                      height: 50,
                      width: 130,
                      // padding:
                      //     EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: AppColors.greenColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: const AppText(
                        data: "View Profile",
                        color: AppColors.deepWhte,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
                  const Gap(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              data: "Service Provider - Apple",
                              color: AppColors.primary,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ],
                        ),
                        // IconButton(
                        //     onPressed: () {},
                        //     icon: const Icon(Icons.bookmark_outline)),
                        Row(
                          children: [
                            Material(
                              color: AppColors.deepWhte,
                              elevation: 1,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.bookmark_outline)),
                            ),
                            const Gap(width: 5),
                            Material(
                              color: AppColors.deepWhte,
                              elevation: 1,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                              child: IconButton(
                                  onPressed: () {
                                    Get.toNamed(AppRoutes
                                        .customerOfferRequestDetailsAgainDetailsScreen);
                                  },
                                  icon: const Icon(
                                      color: AppColors.greenColor,
                                      Icons.remove_red_eye_outlined)),
                            ),
                            // const Gap(height: 5),
                            // const Row(
                            //   children: [
                            //     Icon(
                            //       Icons.star,
                            //       color: AppColors.yellow,
                            //       size: 18,
                            //     ),
                            //     Gap(width: 5),
                            //     AppText(
                            //       data: "4.3",
                            //       color: AppColors.primary,
                            //       fontSize: 13,
                            //       fontWeight: FontWeight.w700,
                            //       overflow: TextOverflow.ellipsis,
                            //       maxLines: 2,
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 20),

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
                                  AppText(
                                    data: ": 18 August 2025",
                                    color: AppColors.primary,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.start,
                                  ),
                                  // Gap(height: 10),
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
                    child: Column(
                      children: [
                        // Gap(height: 20),
                        const Row(
                          children: [
                            AppText(
                              data: "Description :",
                              color: AppColors.primary,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                        const Gap(height: 10),
                        AppText(
                          data:
                              "I Specialize in creating user-centered digital experiences that are visually engaging, intuitive,  highly functional. My goal is to design seamless interfaces that not only meet business objectives but also delight usersFrom color schemes to typography and iconography, I design aesthetically pleasing and functional user interfaces. I ensure every design choice enhances usability and supports brand identity.",
                          color: AppColors.primaryWithOpacityW6,
                          fontSize: 16,
                          // fontWeight: FontWeight.w500,
                        ),
                        // const Gap(height: 10),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.customerCreateCounterOfferScreen);
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
                          data: "Create Counter Offer",
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
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
                                data: "Decline",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              offerRequestConfirmDialogBox();
                              // Get.close();
                              // Get.offAllNamed(AppRoutes.signIn);
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
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.circular(
                                    AppSize.width(value: 8.0),
                                  )),
                              child: const AppText(
                                data: "Approve",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: AppColors.white,
                              ),
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
Widget buildServiceBullet(String title, String description) {
  return Row(
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
  );
}
