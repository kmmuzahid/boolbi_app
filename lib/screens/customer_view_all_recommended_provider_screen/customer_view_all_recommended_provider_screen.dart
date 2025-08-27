import 'package:boolbi_app/const/images/app_asset_icons.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/customer_view_all_recommended_provider_screen/controllers/customer_view_all_recommended_provider_screen_controller.dart';
import 'package:boolbi_app/screens/customer_view_all_recommended_provider_screen/widget/customer_recommended_provider_card.dart';
import 'package:boolbi_app/screens/customer_view_all_recommended_provider_screen/widget/filter_dialog_box.dart';
import 'package:boolbi_app/screens/provider_offer_screen/widget/my_offer_confirm_dialog_box.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_appbar/user_custom_appbar.dart';

class CustomerViewAllRecommendedProviderScreen extends StatelessWidget {
  const CustomerViewAllRecommendedProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerViewAllRecommendedProviderScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "All Recommended Provider"),
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
                      mainAxisAlignment: MainAxisAlignment.end,
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
                        const Gap(width: 10),
                        Material(
                          elevation: 1,
                          borderRadius: BorderRadius.circular(100),
                          child: GestureDetector(
                            onTap: () {
                              fillterDialogBox();
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
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // const Gap(height: 0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    children: [
                      AppText(
                        data: "Based On You Recent Search",
                        color: AppColors.primary,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child:
                      //  controller.isLoading.value
                      //     ? const Center(child: CircularProgressIndicator(color: Colors.black))
                      //     :
                      Padding(
                    padding: const EdgeInsets.all(0),
                    child: ListView.builder(
                      controller: controller.scrollController,
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
