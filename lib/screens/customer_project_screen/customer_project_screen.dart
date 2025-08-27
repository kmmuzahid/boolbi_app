import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/customer_project_screen/controllers/customer_project_screen_controller.dart';
import 'package:boolbi_app/screens/customer_project_screen/widget/customer_completed_project_card.dart';
import 'package:boolbi_app/screens/customer_project_screen/widget/customer_runing_project_card.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerProjectScreen extends StatelessWidget {
  const CustomerProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerProjectScreenController(),
        builder: (controller) {
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: AppColors.primaryBackgroud,
              // floatingActionButtonLocation:
              //     FloatingActionButtonLocation.miniCenterDocked,

              /// Floating Action Button
              // floatingActionButton:
              // controller.selectedIndexTabBar.value == 1
              //     ?
              //     SafeArea(
              //   child: Padding(
              //     padding: const EdgeInsets.only(
              //         bottom: 85,
              //         // bottom:  AppSize.size.width * 0.16 ,
              //         // bottom: AppSize.size.height * 0.11,
              //         right: 20,
              //         left: 20),
              //     child: GestureDetector(
              //       onTap: () {
              //         Get.toNamed(
              //             AppRoutes.customerViewDeliveryRequestListScreen);
              //       },
              //       child: Container(
              //         // margin: const EdgeInsets.only(bottom: 65),
              //         width: Get.width,
              //         height: AppSize.width(value: 50.0),
              //         alignment: Alignment.center,
              //         decoration: BoxDecoration(
              //             color: AppColors.primary,
              //             borderRadius:
              //                 BorderRadius.circular(AppSize.width(value: 8))),
              //         child: const AppText(
              //           data: "View Delivery Requests",
              //           fontSize: 18,
              //           color: AppColors.white,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ),
              //   ),
              // )
              // : null
              // ,
              body: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        height: AppSize.size.height * 0.06,
                        width: AppSize.size.width,
                        color: AppColors.primaryBackgroud,
                        child: TabBar(
                          // controller: controller.tabController,
                          indicatorSize: TabBarIndicatorSize.tab,
                          onTap: (value) {
                            controller.selectedIndexTabBar.value = value;
                            controller.update();
                          },

                          indicator: const UnderlineTabIndicator(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            borderSide: BorderSide(
                              width: 3.0,
                              color:
                                  AppColors.primary, // Custom underline color
                            ),
                          ),
                          labelColor:
                              AppColors.primary, // Color of selected tab
                          unselectedLabelColor:
                              Colors.grey, // Color of unselected tabs
                          labelStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            overflow: TextOverflow.ellipsis,
                          ),
                          tabAlignment: TabAlignment.center,
                          isScrollable: true,

                          tabs: const [
                            Tab(text: "Running Project"),
                            Tab(text: "Completed Project"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Wrap the TabBarView in an Expanded widget
                  const Expanded(
                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        RunningProjectsView(),
                        CompletedProjectsView(),
                        // Container(color: Colors.red),
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

class RunningProjectsView extends StatelessWidget {
  const RunningProjectsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBackgroud,
      child:
          //  controller.isLoading.value
          //     ? const Center(child: CircularProgressIndicator(color: Colors.black))
          //     :
          Padding(
        padding: const EdgeInsets.only(top: 20),
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
            return const CustomerRuningProjectCard();
          },
        ),
      ),
    );
  }
}

class CompletedProjectsView extends StatelessWidget {
  const CompletedProjectsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBackgroud,
      child:
          //  controller.isLoading.value
          //     ? const Center(child: CircularProgressIndicator(color: Colors.black))
          //     :
          Padding(
        padding: const EdgeInsets.only(top: 20),
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
            return const CustomerCompletedProjectCard();
          },
        ),
      ),
    );
  }
}
