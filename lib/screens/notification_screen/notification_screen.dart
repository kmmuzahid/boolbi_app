import 'dart:developer';

import 'package:boolbi_app/screens/provider_offer_screen/widget/my_offer_confirm_dialog_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/notification_screen/controller/notification_screen_controller.dart';
import '../../utils/app_size.dart';
import '../../widgets/texts/app_text.dart';
import 'widget/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: NotificationScreenController(),
      builder: (controller) {
        return AnnotatedRegion(
          value: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: AppColors.deepWhte,
          ),
          child: Scaffold(
            backgroundColor: AppColors.halkaGrey,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(AppSize.size.height * 0.071),
              child: SafeArea(
                child: Container(
                  width: AppSize.size.width,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BackButton(
                        color: AppColors.white,
                        onPressed: () {
                          if (controller.multiNotificationsSelect.value) {
                            controller.multiNotificationsSelect.value = false;
                            controller.update();
                          } else {
                            Get.back();
                          }
                        },
                      ),
                      const Expanded(
                        child: AppText(
                          data: "Notification",
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 15),
                      //   child: Obx(
                      //     () => IconButton(
                      //       onPressed: () {
                      //         controller.notificationMuteOption.value =
                      //             !controller.notificationMuteOption.value;
                      //       },
                      //       icon: Icon(
                      //           controller.notificationMuteOption.value
                      //               ? Icons.notifications_off_outlined
                      //               : Icons.notifications_active_outlined,
                      //           color: AppColors.white),
                      //     ),
                      //   ),
                      // ),

                      // Hidden Button To Align Title on Center
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 15),
                      //   child: TextButton(
                      //       onPressed: () {
                      //         // controller.readAllNotification();
                      //       },
                      //       child: const AppText(
                      //         data: "Read All",
                      //         fontSize: 15,
                      //         color: AppColors.white,
                      //       )),
                      // )
                      if (controller.multiNotificationsSelect.value)
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: TextButton(
                              onPressed: () {
                                // controller.multiNotificationsSelect.value =
                                //     !controller.multiNotificationsSelect.value;
                                //     controller.update();
                                // controller.readAllNotification();
                              },
                              child: const AppText(
                                data: "Select All",
                                fontSize: 15,
                                color: AppColors.white,
                              )),
                        ),
                      if (controller.multiNotificationsSelect.value)
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: TextButton(
                              onPressed: () {
                                myOfferConfirmDialogBox();
                                // controller.multiNotificationsSelect.value =
                                //     !controller.multiNotificationsSelect.value;
                                // controller.readAllNotification();
                              },
                              child: const AppText(
                                data: "Delete",
                                fontSize: 15,
                                color: AppColors.white,
                              )),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            // appBar: customAppBar2(text: "Notification"),
            body: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  // const SizedBox(height: 20),
                  Expanded(
                    child: Obx(
                      () => controller.isLoading.value
                          ? const Center(
                              child: CircularProgressIndicator(
                                  color: Colors.black))
                          : ListView.builder(
                              // controller: controller.scrollController,
                              // itemCount: notificationList.length + 1,
                              itemCount: 20,
                              itemBuilder: (context, index) {
                                // if (index == notificationList.length) {
                                //   return controller.isLoadingMore.value
                                //       ? const Padding(
                                //           padding: EdgeInsets.all(8.0),
                                //           child: Center(
                                //               child:
                                //                   CircularProgressIndicator()),
                                //         )
                                //       : const SizedBox();
                                // }
                                RxBool isChecked = false.obs;
                                // var item = notificationList[index];
                                return Obx(
                                  () => Row(
                                    children: [
                                      controller.multiNotificationsSelect.value
                                          ? Checkbox(
                                              checkColor: AppColors.white,
                                              activeColor: AppColors.primary,
                                              value: isChecked.value,
                                              onChanged: (value) {
                                                isChecked.value = value!;
                                              },
                                            )
                                          : const SizedBox(),
                                      Flexible(
                                        child: GestureDetector(
                                          onLongPress: () {
                                            // controller.multiNotificationsSelect
                                            //         .value =
                                            //     !controller
                                            //         .multiNotificationsSelect
                                            //         .value;
                                            // controller.update();
                                            log("Cllicked ON The Long Presss");
                                          },
                                          child: NotificationCard(
                                            controller: controller,
                                            // item: item,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
