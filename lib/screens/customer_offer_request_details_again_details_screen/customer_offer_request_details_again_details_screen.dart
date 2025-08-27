import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/customer_offer_request_details_again_details_screen/controllers/customer_offer_request_details_again_details_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/app_image/app_image_circular.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import '../../widgets/custom_appbar/user_custom_appbar.dart';

class CustomerOfferRequestDetailsAgainDetailsScreen extends StatelessWidget {
  const CustomerOfferRequestDetailsAgainDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerOfferRequestDetailsAgainDetailsScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "Service Provider Apple"),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: AppImage(
                        path: AssetsImagesPath.demoImage2,
                        // url: item.primary ?? "",
                        fit: BoxFit.fill,
                        width: AppSize.size.width,
                      ),
                    ),
                  ),
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
                            Gap(height: 10),
                            Row(
                              children: [
                                AppText(
                                  data: "UX/UI DESIGNER",
                                  color: AppColors.primary,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ],
                        ),
                        // IconButton(
                        //     onPressed: () {},
                        //     icon: const Icon(Icons.bookmark_outline)),
                        Column(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(height: 10),
                        const Row(
                          children: [
                            AppText(
                              data: "Online /Official /Home (Service)",
                              color: AppColors.primary,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        const Gap(height: 10),
                        const Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: AppColors.primary,
                              size: 15,
                            ),
                            AppText(
                              data: "Berlin, Germany's capital H/202",
                              color: AppColors.primary,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        const Gap(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                decoration: BoxDecoration(
                                  color: const Color(0xffEDEDEF),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Column(
                                  children: [
                                    AppText(
                                      data: "Agv Rating",
                                      color: AppColors.primary,
                                      fontSize: 15,
                                    ),
                                    Gap(height: 10),
                                    AppText(
                                      data: "4.3",
                                      color: AppColors.primary,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Gap(width: 10),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                decoration: BoxDecoration(
                                  color: const Color(0xffEDEDEF),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Column(
                                  children: [
                                    AppText(
                                      data: "Total Review",
                                      color: AppColors.primary,
                                      fontSize: 15,
                                    ),
                                    Gap(height: 10),
                                    AppText(
                                      data: "60",
                                      color: AppColors.primary,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Gap(width: 10),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                decoration: BoxDecoration(
                                  color: const Color(0xffEDEDEF),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Column(
                                  children: [
                                    AppText(
                                      data: "Total Service",
                                      color: AppColors.primary,
                                      fontSize: 15,
                                    ),
                                    Gap(height: 10),
                                    AppText(
                                      data: "200",
                                      color: AppColors.primary,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Gap(height: 20),
                        const AppText(
                          data: "Description Of Your Service:",
                          color: AppColors.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        const Gap(height: 10),
                        AppText(
                          data:
                              "I specialize in creating user-centered digital experiences that are visually engaging, intuitive,  highly functional. My goal is to design seamless interfaces that not only meet business objectives but also delight usersFrom color schemes to typography and iconography, I design aesthetically pleasing and functional user interfaces. I ensure every design choice enhances usability and supports brand identity.",
                          color: AppColors.primaryWithOpacityW6,
                          fontSize: 15.5,
                          fontWeight: FontWeight.w500,
                        ),
                        const Gap(height: 20),
                        // const AppText(
                        //   data: "My Services Include",
                        //   color: AppColors.primary,
                        //   fontSize: 18,
                        //   fontWeight: FontWeight.w600,
                        // ),
                        // const Gap(height: 10),

                        // // Bullet with inline title and description underneath, indented
                        // _buildBulletWithDescription(
                        //   "User Research & Analysis",
                        //   "I conduct comprehensive user research to understand your target audience’s needs, behaviors, and pain points. By gathering insights, I ensure the designs are both practical and aligned with user expectations.",
                        // ),
                        // const Gap(height: 10),
                        // _buildBulletWithDescription(
                        //   "Wire Framing & Prototyping",
                        //   "I build interactive wireframes and prototypes that bring your ideas to life before development. These tools allow stakeholders to visualize the end product early in the design process and provide feedback for iterative improvements.",
                        // ),
                        // const Gap(height: 10),
                        // _buildBulletWithDescription(
                        //   "UI Design & Visual Design",
                        //   "From color schemes to typography and iconography, I design aesthetically pleasing and functional user interfaces. I ensure every design choice enhances usability and supports brand identity.",
                        // ),
                        // const Gap(height: 10),
                        // For the last bullet without description, just use title inline
                        // const Row(
                        //   children: [
                        //     AppText(
                        //       data: "• ",
                        //       color: AppColors.primary,
                        //       fontSize: 18,
                        //       fontWeight: FontWeight.w600,
                        //     ),
                        //     AppText(
                        //       data: "Interaction Design",
                        //       color: AppColors.primary,
                        //       fontSize: 16,
                        //       fontWeight: FontWeight.w600,
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                  // const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Review",
                          color: AppColors.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(5, (index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              right: 10, left: index == 0 ? 15 : 0),
                          child: Container(
                            width: AppSize.size.width * 0.80,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: const Color(0xffEDEDEF),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const AppImageCircular(
                                          height: 45,
                                          width: 45,
                                          path: AssetsImagesPath.demoImage,
                                          fit: BoxFit.cover,
                                        ),
                                        const Gap(width: 5),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const AppText(
                                              data: "Kamran",
                                              color: AppColors.primary,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            Row(
                                              children: [
                                                RatingBar.builder(
                                                  allowHalfRating: true,
                                                  tapOnlyMode: false,
                                                  updateOnDrag: false,
                                                  initialRating: 3.5,
                                                  // reviewData.rating!.toDouble(),
                                                  ignoreGestures:
                                                      true, // Disable gestures to prevent changes
                                                  minRating: 1,
                                                  direction: Axis.horizontal,
                                                  // allowHalfRating: true,
                                                  itemCount: 5,
                                                  itemPadding: EdgeInsets.zero,
                                                  itemSize: AppSize.width(
                                                      value: 15.0),
                                                  itemBuilder: (context, _) =>
                                                      const Icon(
                                                    Icons.star,
                                                    color: AppColors.yellow,
                                                  ),
                                                  onRatingUpdate: (rating) {
                                                    print(
                                                        rating); // This won't be called because gestures are ignored
                                                  },
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const AppText(
                                      data: "1 month ago",
                                      color: AppColors.primary,
                                      fontSize: 16,
                                    ),
                                  ],
                                ),
                                const Gap(height: 10),

                                ///

                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: AppText(
                                      color: AppColors.primary,
                                      fontSize: 16,
                                      // maxLines: 5,
                                      // overflow: TextOverflow.ellipsis,
                                      data:
                                          "Kamran X's website design work was SPOT ON with excellent brand alignment and creativity... Working with Kamran was a pleasure thanks to his politeness! "),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
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
                  const Gap(height: 10),
                  SizedBox(
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
                  const Gap(height: 20),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: GestureDetector(
                  //     onTap: () {
                  //       Get.toNamed(AppRoutes.customerCreateJobOrderScreen);
                  //     },
                  //     child: Container(
                  //       width: Get.width,
                  //       height: AppSize.width(value: 50.0),
                  //       alignment: Alignment.center,
                  //       decoration: BoxDecoration(
                  //           border: Border.all(
                  //             color: AppColors.primary,
                  //           ),
                  //           borderRadius:
                  //               BorderRadius.circular(AppSize.width(value: 8))),
                  //       child: const AppText(
                  //         data: "Direct Service Request",
                  //         fontSize: 18,
                  //         color: AppColors.primary,
                  //         fontWeight: FontWeight.w600,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // const Gap(height: 5),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: GestureDetector(
                  //     onTap: () {},
                  //     child: Container(
                  //       width: Get.width,
                  //       height: AppSize.width(value: 50.0),
                  //       alignment: Alignment.center,
                  //       decoration: BoxDecoration(
                  //           color: AppColors.primary,
                  //           borderRadius:
                  //               BorderRadius.circular(AppSize.width(value: 8))),
                  //       child: const AppText(
                  //         data: "Message",
                  //         fontSize: 18,
                  //         color: AppColors.white,
                  //         fontWeight: FontWeight.w600,
                  //       ),
                  //     ),
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

// Widget _buildBulletWithDescription(String title, String description) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Row(
//         children: [
//           const AppText(
//             data: "• ",
//             color: AppColors.primary,
//             fontSize: 18,
//             fontWeight: FontWeight.w600,
//           ),
//           AppText(
//             data: title,
//             color: AppColors.primary,
//             fontSize: 16,
//             fontWeight: FontWeight.w600,
//           ),
//         ],
//       ),
//       Padding(
//         padding: const EdgeInsets.only(left: 24.0), // indent description
//         child: AppText(
//           data: description,
//           color: AppColors.primary,
//           fontSize: 15.5,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//     ],
//   );
// }
