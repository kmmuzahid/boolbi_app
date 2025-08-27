import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/customer_view_profile_screen/controller/customer_view_profile_screen_controller.dart';
import 'package:boolbi_app/screens/view_profile_screen/controller/view_profile_screen_controller.dart';
import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

import '../../widgets/custom_appbar/user_custom_appbar.dart';

class CustomerViewProfileScreen extends StatelessWidget {
  const CustomerViewProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CustomerViewProfileScreenController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.deepWhte,
           appBar: customerCustomAppBar(title: "View Profile"),
          // appBar: CustomAppBar(text: "View Profile"),
          bottomNavigationBar: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: GestureDetector(
                      onTap: () {
                   Get.toNamed(
                              AppRoutes.customerPersonalInformationScreen);
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
                          data: "Edit Details",
                          fontSize: 18,
                          color: AppColors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
          body: Column(
            children: [
              Gap(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: AppImage(
                        height: 120,
                        width: 120,
                        path: AssetsImagesPath.demoImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
          

                  
                ],
              ),
              Gap(height: 10),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: AppText(
              //     data:
              //         "I'm Jane Hong, and I recently graduated with an advanced diploma from Smith secondary school. I'm seeking an internship where I can apply my skills in content creation and increase my experience in digital marketing.",
              //     color: AppColors.primary,
              //     fontSize: 15,
              //   ),
              // ),
              Gap(height: 20),
             
            
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 10),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       Expanded(
              //         child: GestureDetector(
              //           onTap: () {
              //             controller.selectedIndex.value = 1;

              //             controller.update();
              //           },
              //           child: Padding(
              //             padding: const EdgeInsets.only(right: 10, bottom: 5),
              //             child: Material(
              //               elevation: 2,
              //               borderRadius: BorderRadius.circular(5),
              //               child: Container(
              //                 padding: EdgeInsets.symmetric(vertical: 10),
              //                 alignment: Alignment.center,
              //                 decoration: BoxDecoration(
              //                   color:
              //                       controller.selectedIndex.value == 1
              //                           ? AppColors.primary
              //                           : Color(0xffFDF0E5),
              //                   borderRadius: BorderRadius.circular(5),
              //                 ),
              //                 child: Padding(
              //                   padding: const EdgeInsets.symmetric(
              //                     horizontal: 20,
              //                   ),
              //                   child: AppText(
              //                     data: "Information",
              //                     color:
              //                         controller.selectedIndex.value == 1
              //                             ? AppColors.deepWhte
              //                             : AppColors.primary,
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     fontSize: 15,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //       Expanded(
              //         child: GestureDetector(
              //           onTap: () {
              //             controller.selectedIndex.value = 2;

              //             controller.update();
              //           },
              //           child: Padding(
              //             padding: const EdgeInsets.only(right: 10, bottom: 5),
              //             child: Material(
              //               elevation: 2,
              //               borderRadius: BorderRadius.circular(5),
              //               child: Container(
              //                 padding: EdgeInsets.symmetric(vertical: 10),
              //                 alignment: Alignment.center,
              //                 decoration: BoxDecoration(
              //                   color:
              //                       controller.selectedIndex.value == 2
              //                           ? AppColors.primary
              //                           : Color(0xffFDF0E5),
              //                   borderRadius: BorderRadius.circular(5),
              //                 ),
              //                 child: Padding(
              //                   padding: const EdgeInsets.symmetric(
              //                     horizontal: 20,
              //                   ),
              //                   child: AppText(
              //                     data: "Task Details",
              //                     color:
              //                         controller.selectedIndex.value == 2
              //                             ? AppColors.deepWhte
              //                             : AppColors.primary,
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     fontSize: 15,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //       Expanded(
              //         child: GestureDetector(
              //           onTap: () {
              //             controller.selectedIndex.value = 3;

              //             controller.update();
              //           },
              //           child: Padding(
              //             padding: const EdgeInsets.only(right: 10, bottom: 5),
              //             child: Material(
              //               elevation: 2,
              //               borderRadius: BorderRadius.circular(5),
              //               child: Container(
              //                 padding: EdgeInsets.symmetric(vertical: 10),
              //                 alignment: Alignment.center,
              //                 decoration: BoxDecoration(
              //                   color:
              //                       controller.selectedIndex.value == 3
              //                           ? AppColors.primary
              //                           : Color(0xffFDF0E5),
              //                   borderRadius: BorderRadius.circular(5),
              //                 ),
              //                 child: Padding(
              //                   padding: const EdgeInsets.symmetric(
              //                     horizontal: 20,
              //                   ),
              //                   child: AppText(
              //                     data: "Review",
              //                     color:
              //                         controller.selectedIndex.value == 3
              //                             ? AppColors.deepWhte
              //                             : AppColors.primary,
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     fontSize: 15,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Gap(height: 10),
              Obx(
                () =>
                    controller.selectedIndex.value == 1
                        ? Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    AppText(
                                      data: " Personal Details",
                                      color: AppColors.primary,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ],
                                ),
                                // Gap(height: 20),
                                Divider(),
                                Gap(height: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AppText(
                                              data: "Name",
                                              color: Color(0xff545454),
                                            ),
                                            AppText(
                                              data: "Kawsar Hamid",
                                              color: Color(0xff000000),
                                            ),
                                          ],
                                        ),
                                      ),
                                       Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AppText(
                                              data: "Phone Number",
                                              color: Color(0xff545454),
                                            ),
                                            AppText(
                                              data: "+01889-4754574",
                                              color: Color(0xff000000),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Gap(height: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AppText(
                                              data: "E-mail",
                                              color: Color(0xff545454),
                                            ),
                                            AppText(
                                              data: "ajay@gmail.com",
                                              color: Color(0xff000000),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AppText(
                                              data: "Address",
                                              color: Color(0xff545454),
                                            ),
                                            AppText(
                                              data:
                                                  "76/4 R no. 60/1 Rue des Saints-Paris, 75005 Paris",
                                              color: Color(0xff000000),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Gap(height: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AppText(
                                              data: "City",
                                              color: Color(0xff545454),
                                            ),
                                            AppText(
                                              data: "Bangladesh",
                                              color: Color(0xff000000),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AppText(
                                              data: "Postal Code",
                                              color: Color(0xff545454),
                                            ),
                                            AppText(
                                              data: "3900",
                                              color: Color(0xff000000),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Gap(height: 20),

                                // Padding(
                                //   padding: const EdgeInsets.symmetric(
                                //     horizontal: 10,
                                //   ),
                                //   child: Row(
                                //     children: [
                                //       Column(
                                //         crossAxisAlignment:
                                //             CrossAxisAlignment.start,
                                //         children: [
                                //           AppText(
                                //             data: "Gender",
                                //             color: Color(0xff545454),
                                //           ),
                                //           AppText(
                                //             data: "Male",
                                //             color: Color(0xff000000),
                                //           ),
                                //         ],
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        )
                        : controller.selectedIndex.value == 2
                        ? Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      AppText(
                                        data: "As A Provider",
                                        color: AppColors.primary,
                                      ),
                                    ],
                                  ),
                                  Gap(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AppText(
                                                data: "Completed Task",
                                                color: Color(0xff545454),
                                              ),
                                              AppText(
                                                data: "12",
                                                color: Color(0xff000000),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AppText(
                                                data: "Pending Task",
                                                color: Color(0xff545454),
                                              ),
                                              AppText(
                                                data: "5",
                                                color: Color(0xff000000),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Gap(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AppText(
                                                data: "Total Earn",
                                                color: Color(0xff545454),
                                              ),
                                              AppText(
                                                data: "\$569",
                                                color: Color(0xff000000),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AppText(
                                                data: "Overall Rating",
                                                color: Color(0xff545454),
                                              ),
                                              AppText(
                                                data: "(4.5/5)",
                                                color: Color(0xff000000),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Gap(height: 20),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            AppText(
                                              data: "Total Earn",
                                              color: Color(0xff545454),
                                            ),
                                          ],
                                        ),
                                        Gap(height: 5),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: List.generate(3, (index) {
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                  right: 6,
                                                ),
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                    vertical: 3,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: AppColors.deepWhte,
                                                    border: Border.all(
                                                      color:
                                                          AppColors
                                                              .primary,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          5,
                                                        ),
                                                  ),
                                                  child: AppText(
                                                    data: "Gardening",
                                                    color:
                                                        AppColors
                                                            .primary,
                                                  ),
                                                ),
                                              );
                                            }),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Gap(height: 30),
                                  Row(
                                    children: [
                                      AppText(
                                        data: "As A Customer",
                                        color: AppColors.primary,
                                      ),
                                    ],
                                  ),
                                  Gap(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AppText(
                                                data: "Completed Posted Task",
                                                color: Color(0xff545454),
                                              ),
                                              AppText(
                                                data: "12",
                                                color: Color(0xff000000),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AppText(
                                                data: "Pending Posted Task",
                                                color: Color(0xff545454),
                                              ),
                                              AppText(
                                                data: "5",
                                                color: Color(0xff000000),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Gap(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AppText(
                                                data: "Total Spent",
                                                color: Color(0xff545454),
                                              ),
                                              AppText(
                                                data: "\$569",
                                                color: Color(0xff000000),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AppText(
                                                data: "Overall Rating",
                                                color: Color(0xff545454),
                                              ),
                                              AppText(
                                                data: "(4.5/5)",
                                                color: Color(0xff000000),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Gap(height: 20),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            AppText(
                                              data: "Task List",
                                              color: Color(0xff545454),
                                            ),
                                          ],
                                        ),
                                        Gap(height: 5),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: List.generate(20, (
                                              index,
                                            ) {
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                  right: 6,
                                                ),
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                    vertical: 3,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: AppColors.deepWhte,
                                                    border: Border.all(
                                                      color:
                                                          AppColors
                                                              .primary,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          5,
                                                        ),
                                                  ),
                                                  child: AppText(
                                                    data: "Gardening",
                                                    color:
                                                        AppColors
                                                            .primary,
                                                  ),
                                                ),
                                              );
                                            }),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        : Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              bottom: 20,
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: List.generate(10, (index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Material(
                                      elevation: 2,
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        // height: 100,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                          color: AppColors.deepWhte,
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: List.generate(5, (
                                                    index,
                                                  ) {
                                                    return Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color:
                                                              Colors.amber[600],
                                                          size: 18,
                                                        ),
                                                        Gap(width: 1),
                                                      ],
                                                    );
                                                  }),
                                                ),
                                                AppText(
                                                  data: "5 oct 2024",
                                                  color: Color(0xff4E4E4E),
                                                ),
                                              ],
                                            ),
                                            Gap(height: 10),
                                            Row(
                                              children: [
                                                Flexible(
                                                  child: AppText(
                                                    data: "Haircuts",
                                                    color: Color(0xff4E4E4E),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Gap(height: 10),
                                            Row(
                                              children: [
                                                Flexible(
                                                  child: AppText(
                                                    data:
                                                        "Best Hair Salon in Paris. We love to serve you",
                                                    color:
                                                        AppColors
                                                            .primary,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                        ),
              ),
            ],
          ),
        );
      },
    );
  }
}
