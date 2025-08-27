import 'package:boolbi_app/const/images/app_asset_icons.dart';
import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/customer_message_screen/controllers/customer_message_screen_controller.dart';
import 'package:boolbi_app/screens/provider_offer_screen/widget/my_offer_confirm_dialog_box.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/app_image/app_image_circular.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

RxList<dynamic> displayChatList = <dynamic>[].obs; // Data to display

class CustomerMessageScreen extends StatelessWidget {
  const CustomerMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerMessageScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            body:
                // controller.isLoading.value
                //                 ? const Center(
                //                     child: CircularProgressIndicator(color: Colors.black),
                //                   )
                //                 :
                Column(
              children: [
                const Gap(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(value: 15),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Material(
                          elevation: 3,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: AppInputWidgetTwo(
                            readOnly: true,
                            // onFieldSubmitted: controller.fieldSubmitted,
                            // controller: controller.textEditingController,
                            // onChanged: controller.callSearchFunction,
                            // focusNode: controller.focusNode,
                            onTap: () {
                              // Get.toNamed(AppRoutes.customerSearchScreen,
                              //     arguments: false);
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
                      // GestureDetector(
                      //   onTap: () {
                      //     Get.toNamed(AppRoutes.customerSearchScreen,
                      //         arguments: true);
                      //     // controller.filterClick();
                      //   },
                      //   child: Container(
                      //     width: AppSize.size.width * 0.12,
                      //     decoration: BoxDecoration(
                      //         color: AppColors.white,
                      //         borderRadius: BorderRadius.circular(100)),
                      //     padding:
                      //         EdgeInsets.all(AppSize.size.height * 0.012),
                      //     child: const AppImage(
                      //       path: AssetsIconsPath.filter,
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                ),
                const Gap(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    // itemCount: displayChatList.length,
                    itemBuilder: (context, index) {
                      // var item = displayChatList[index];
                      return Slidable(
                        key: const ValueKey("abc"),

                        // Start action pane (left swipe)
                        startActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          dismissible: DismissiblePane(
                            onDismissed: () async {
                              await myOfferConfirmDialogBox();
                            },
                          ),
                          children: [
                            SlidableAction(
                              onPressed: (context) async {
                                await myOfferConfirmDialogBox();
                              },
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: 'Delete',
                            ),
                            // Add more start actions if needed
                          ],
                        ),

                        // End action pane (right swipe)
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) async {
                                await myOfferConfirmDialogBox();
                              },
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: 'Delete',
                            ),
                            // SlidableAction(
                            //   onPressed: (context) {
                            //     // Define archive or other action here
                            //   },
                            //   backgroundColor: Colors.blue,
                            //   foregroundColor: Colors.white,
                            //   icon: Icons.archive,
                            //   label: 'Archive',
                            // ),
                            // SlidableAction(
                            //   onPressed: (context) {
                            //     // Define save or other action here
                            //   },
                            //   backgroundColor: Colors.green,
                            //   foregroundColor: Colors.white,
                            //   icon: Icons.save,
                            //   label: 'Save',
                            // ),
                          ],
                        ),

                        // Your existing child content inside Slidable
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 0),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed(AppRoutes.conversationScreen);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(
                                  bottom: 10, left: 15, right: 15),
                              decoration: const BoxDecoration(
                                color: AppColors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Material(
                                elevation: 1,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: AppSize.width(value: 10.0),
                                  ),
                                  decoration: const BoxDecoration(
                                    border: Border(),
                                    color: AppColors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    leading: AppImageCircular(
                                      path: AssetsImagesPath.demoImage,
                                      width: AppSize.width(value: 50),
                                      height: AppSize.width(value: 50),
                                    ),
                                    title: const AppText(
                                      data: "Ajay Dev",
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.primary,
                                      fontSize: 18,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    subtitle: AppText(
                                      data: "hello dear,how are you...",
                                      color: AppColors.primaryWithOpacityW6,
                                      fontSize: 14,
                                      maxLines: 1,
                                      fontWeight: FontWeight.w500,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    trailing: const Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          AppText(
                                            data: "7.30 PM",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        });
  }
}
