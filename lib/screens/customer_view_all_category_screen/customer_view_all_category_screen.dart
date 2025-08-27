import 'package:boolbi_app/const/images/app_asset_icons.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/customer_view_all_category_screen/controllers/customer_view_all_category_screen_controller.dart';
import 'package:boolbi_app/screens/customer_view_all_category_screen/widget/user_category_card.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_appbar/user_custom_appbar.dart';

class CustomerViewAllCategoryScreen extends StatelessWidget {
  const CustomerViewAllCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerViewAllCategoryScreenController(),
        builder: (controller) {
          return Scaffold(
            appBar: customerCustomAppBar(title: "View All Categories"),
            body: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: AppColors.primaryBackgroud,
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
                          child: Material(
                            elevation: 1,
                            borderRadius: BorderRadius.circular(5),
                            child: AppInputWidgetTwo(
                              // onFieldSubmitted: controller.fieldSubmitted,
                              // controller: controller.textEditingController,
                              // onChanged: controller.callSearchFunction,
                              // focusNode: controller.focusNode,
                              onTap: () {
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
                        ),
                        // const Gap(width: 10),
                        // Material(
                        //   elevation: 1,
                        //   borderRadius: BorderRadius.circular(100),
                        //   child: GestureDetector(
                        //     onTap: () {
                        //       // controller.filterClick();
                        //     },
                        //     child: Container(
                        //       width: AppSize.size.width * 0.12,
                        //       decoration: BoxDecoration(
                        //           color: AppColors.white,
                        //           borderRadius: BorderRadius.circular(100)),
                        //       padding:
                        //           EdgeInsets.all(AppSize.size.height * 0.012),
                        //       child: const AppImage(
                        //         path: AssetsIconsPath.filter,
                        //       ),
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
                // const Gap(height: 0),
                Expanded(
                  child:
                      // controller.isLoading.value
                      //     ? const Center(
                      //         child: CircularProgressIndicator(
                      //         color: Colors.black,
                      //       ))
                      //     :
                      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: GridView.builder(
                      controller: controller.scrollController,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 250,
                        childAspectRatio: 2 / 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        // if (index == controller.productList.length) {
                        //   return const Center(child: CircularProgressIndicator());
                        // }

                        // var item = controller.productList[index];
                        return const UserCategoryCard();
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
