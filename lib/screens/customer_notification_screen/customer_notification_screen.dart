import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/navigation_screen/widgets/custom_appbar_2.dart';
import 'package:boolbi_app/screens/customer_notification_screen/controller/customer_notification_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

class CustomerNotificationScreen extends StatelessWidget {
  const CustomerNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CustomerNotificationScreenController(),
      builder: (controller) {
        return AnnotatedRegion(
          value: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: AppColors.deepWhte,
          ),
          child: Scaffold(
            backgroundColor: AppColors.halkaGrey,
            appBar: customAppBar2(text: "Notification"),
            body: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    RxBool isRead = false.obs;
                    return Obx(
                      () => Padding(
                        padding: const EdgeInsets.all(10),
                        child: Material(
                          elevation: 1,
                          borderRadius: BorderRadius.circular(10),
                          child: GestureDetector(
                            onTap: () {
                              if (isRead.value) {
                                isRead.value = false;
                              } else {
                                isRead.value = true;
                              }
                              ///////////// if The Notification is Review Type Then Show Add Review Page
                              // Get.toNamed(AppRoutes.userAddReviewScreen);
                              // print("User Add Review Page");
                            },
                            child: Container(
                              height: AppSize.size.height * 0.11,
                              width: AppSize.size.width,
                              // margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: isRead.value
                                      ? AppColors.deepWhte
                                      : AppColors.deepWhte,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: AppText(
                                          data: "Share your Experience !",
                                          fontSize: 18,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.black400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: AppText(
                                          data:
                                              "Please Share Your Feedback to help Other User",
                                          fontSize: 14,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          // textAlign: TextAlign.start,
                                          color: AppColors.black300,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: AppText(
                                          data: "20-Dec-2024, 2:30 PM ",
                                          fontSize: 14,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          // textAlign: TextAlign.start,
                                          color: AppColors.black200,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )),
          ),
        );
      },
    );
  }
}
