import 'package:boolbi_app/const/images/app_asset_icons.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/customer_view_all_recommended_provider_screen/widget/customer_recommended_provider_card.dart';
import 'package:boolbi_app/screens/customer_home_screen/controllers/customer_home_screen_controller.dart';
import 'package:boolbi_app/screens/customer_home_screen/widget/customer_home_category_card.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerHomeScreen extends StatelessWidget {
  const CustomerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerHomeScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,

            /// Floating Action Button
            floatingActionButton:
                //  controller.selectedIndexTabBar.value == 1
                //     ?
                Padding(
              padding: EdgeInsets.only(bottom: AppSize.size.height * 0.09),
              child: InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () {
                  Get.toNamed(AppRoutes.customerCreateProjectPostScreen);
                },
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    padding: const EdgeInsets.all(13),
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 25,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            )
            // : null
            ,
            body: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSize.width(value: 20),
                        vertical: AppSize.size.height * 0.020),
                    child: Row(
                      children: [
                        Expanded(
                          child: AppInputWidgetTwo(
                            readOnly: true,
                            // onFieldSubmitted: controller.fieldSubmitted,
                            // controller: controller.textEditingController,
                            // onChanged: controller.callSearchFunction,
                            // focusNode: controller.focusNode,
                            onTap: () {
                              Get.toNamed(AppRoutes.customerSearchScreen,
                                  arguments: "search_bar_click");
                              // controller.isShow.value = false;
                            },
                            hintText: "Search Here...",
                            filled: true,
                            maxLines: 1,
                            cursorColor: AppColors.primary,
                            fillColor: AppColors.white,
                            textInputAction: TextInputAction.search,
                            contentPadding: const EdgeInsets.all(0),
                            prefix: Align(
                              child: AppImage(
                                path: AssetsIconsPath.search,
                                height: AppSize.size.height * 0.025,
                              ),
                            ),
                          ),
                        ),
                        const Gap(width: 10),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.customerSearchScreen,
                                arguments: "filter_icon_click");
                            // controller.filterClick();
                          },
                          child: Container(
                            width: AppSize.size.width * 0.12,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(100)),
                            padding:
                                EdgeInsets.all(AppSize.size.height * 0.012),
                            child: const AppImage(
                              path: AssetsIconsPath.filter,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // const Gap(height: 10),
                // All Categories  + View All
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppText(
                        data: "All Categories",
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: AppColors.primary,
                      ),
                      TextButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.customerViewAllCategories);
                          },
                          child: const AppText(
                            data: "View All",
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                            color: AppColors.primary,
                          )),
                    ],
                  ),
                ),
                // const Gap(height: 10),
                // List View Horijontal Section
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const UserHomeCategoryCard();
                    },
                  ),
                ),
                // Recommended Provider  + View All
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppText(
                        data: "Recommended Provider",
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: AppColors.primary,
                      ),
                      TextButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes
                                .customerViewAllRecommendedProviderScreen);
                          },
                          child: const AppText(
                            data: "View All",
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                            color: AppColors.primary,
                          )),
                    ],
                  ),
                ),
                // const Gap(height: 10),
                // List view Section
                Expanded(
                  child:
                      //  controller.isLoading.value
                      //     ? const Center(child: CircularProgressIndicator(color: Colors.black))
                      //     :
                      Padding(
                    padding: const EdgeInsets.all(0),
                    child: ListView.builder(
                      // controller: controller.scrollController,
                      itemCount: 20,
                      // itemCount: controller.orderHistoryList.length + 1,
                      itemBuilder: (context, index) {
                        // if (index == controller.orderHistoryList.length) {
                        //   return controller.isLoadingMore.value
                        //       ? const Padding(
                        //           padding: EdgeInsets.all(8.0),
                        //           child: Center(child: CircularProgressIndicator()),
                        //         )
                        //       : const SizedBox();
                        // }

                        // var data = controller.orderHistoryList[index];
                        return const CustomerRecommendedProviderCard();
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
