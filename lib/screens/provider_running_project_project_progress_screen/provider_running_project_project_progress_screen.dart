import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/customer_runing_project_order_progress_screen/widget/order_track_widget.dart';
import 'package:boolbi_app/screens/provider_running_project_project_progress_screen/controllers/provider_running_project_project_progress_screen_controller.dart';
import 'package:boolbi_app/screens/provider_running_project_project_progress_screen/widget/extend_dailog_box.dart';
import 'package:boolbi_app/screens/provider_running_project_project_progress_screen/widget/provider_running_project_progress_card.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_appbar/user_custom_appbar.dart';
import 'package:dotted_line/dotted_line.dart';

class ProviderRunningProjectProjectProgressScreen extends StatelessWidget {
  const ProviderRunningProjectProjectProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ProviderRunningProjectProjectProgressScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "Project Status"),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(height: 20),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: AppText(
                        data: "Projects Progress #AE52",
                        color: AppColors.primary,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.primary,
                        fontSize: 20),
                  ),
                  const Gap(height: 20),
                  const ProviderRunningProjectProgressCard(),
                  const Gap(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                data: "Ordered Date",
                                color: AppColors.primary,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                              Gap(height: 10),
                              AppText(
                                data: "Delivered Date",
                                color: AppColors.primary,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                              Gap(height: 10),
                              AppText(
                                data: "Total Price",
                                color: AppColors.primary,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                              Gap(height: 10),
                              AppText(
                                data: "Customer",
                                color: AppColors.primary,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                data: "10.02.2025",
                                color: AppColors.primaryWithOpacityW6,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                              const Gap(height: 10),
                              AppText(
                                data: "10.02.2025 03:36 PM",
                                color: AppColors.primaryWithOpacityW6,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                              const Gap(height: 10),
                              AppText(
                                data: "\$120",
                                color: AppColors.primaryWithOpacityW6,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                              const Gap(height: 10),
                              AppText(
                                data: "Ajay Dev",
                                color: AppColors.primaryWithOpacityW6,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Gap(height: 40),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Task Status",
                          color: AppColors.primary,
                          fontWeight: FontWeight.w900,
                          fontSize: 20,
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      // itemCount: controller.orderDetails.history?.length ?? 0,
                      itemBuilder: (context, index) {
                        // final item = controller.orderDetails.history?[index];
                        // final status = item?.status;
                        // final date = item?.date != null ? item?.date.toString().split("T")[0] : "N/A";
                        // final isCompleted = item?.date != null;

                        return Column(
                          children: [
                            orderTrackWidget(
                                title:
                                    "Submitted for Approval On 02 February 2025 ",
                                value: true,
                                date: "30 May 2025, 10.01 PM"),
                            // orderTrackWidget(title: status ?? "", value: isCompleted, date: date),
                            // if (index != controller.orderDetails.history!.length - 1) // Add the line except for the last item
                            if (index != 2)
                              const Padding(
                                padding: EdgeInsets.only(left: 24),
                                child: Row(
                                  children: [
                                    Visibility(
                                      visible: true,
                                      child: DottedLine(
                                        dashColor: AppColors.primary,
                                        dashLength: 4,
                                        lineThickness: 2.0,
                                        lineLength: 46,
                                        direction: Axis.vertical,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                  ///////// Button
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(
                                AppRoutes.providerDeliveryRequestScreen);
                            // adminRequireDialogBox();
                          },
                          child: Container(
                            width: Get.width,
                            height: AppSize.width(value: 50.0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(
                                AppSize.width(value: 8),
                              ),
                            ),
                            child: const AppText(
                              data: "Sent Delivery request",
                              fontSize: 18,
                              color: AppColors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const Gap(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoutes.contactSupportScreen);
                                  // extendDialogBox(controller);
                                },
                                child: Container(
                                  width: Get.width,
                                  height: AppSize.width(value: 50.0),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: AppColors.completeReq,
                                      // border: Border.all(
                                      //   color: AppColors.primary,
                                      // ),
                                      borderRadius: BorderRadius.circular(
                                          AppSize.width(value: 8))),
                                  child: const AppText(
                                    data: "Contact Support",
                                    fontSize: 18,
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const Gap(width: 10),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  //  Get.toNamed(AppRoutes.providerDeliveryRequestScreen);
                                  extendDialogBox(controller);
                                },
                                child: Container(
                                  width: Get.width,
                                  height: AppSize.width(value: 50.0),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.circular(
                                          AppSize.width(value: 8))),
                                  child: const AppText(
                                    data: "Extend",
                                    fontSize: 18,
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
