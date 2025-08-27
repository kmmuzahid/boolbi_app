import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/customer_post_job_screen/controllers/customer_post_job_screen_controller.dart';
import 'package:boolbi_app/screens/customer_post_job_screen/widget/customer_post_job_order_card.dart';
import 'package:boolbi_app/screens/customer_post_job_screen/widget/customer_post_job_post_card.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/widgets/log_print/app_log.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerPostJobScreen extends StatelessWidget {
  const CustomerPostJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerPostJobScreenController(),
        builder: (controller) {
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: AppColors.primaryBackgroud,
              // bottomNavigationBar: controller.selectedIndexTabBar.value == 0
              //     ? SafeArea(
              //         child: GestureDetector(
              //           onTap: () {
              //             // Get.closeAllDialogs();
              //           },
              //           child: Padding(
              //             padding: const EdgeInsets.symmetric(horizontal: 10),
              //             child: Container(
              //               margin: EdgeInsets.all(AppSize.width(value: 5)),
              //               padding: EdgeInsets.all(AppSize.width(value: 5)),
              //               width: Get.width,
              //               height: AppSize.height(value: 45),
              //               alignment: Alignment.center,
              //               decoration: BoxDecoration(
              //                   border: Border.all(
              //                     color: AppColors.primary,
              //                   ),
              //                   color: AppColors.primary,
              //                   borderRadius: BorderRadius.circular(
              //                       AppSize.width(value: 8.0))),
              //               child: const AppText(
              //                 data: "Find Service Provider",
              //                 fontSize: 18,
              //                 fontWeight: FontWeight.w700,
              //                 color: AppColors.white,
              //               ),
              //             ),
              //           ),
              //         ),
              //       )
              //     : null,

              // /// Floating Action Button
              // floatingActionButton: controller.selectedIndexTabBar.value == 1
              //     ? Padding(
              //         padding:
              //             EdgeInsets.only(bottom: AppSize.size.height * 0.09),
              //         child: InkWell(
              //           borderRadius: BorderRadius.circular(100),
              //           onTap: () {
              //             Get.toNamed(
              //                 AppRoutes.customerCreateProjectPostScreen);
              //           },
              //           child: Material(
              //             elevation: 3,
              //             borderRadius: BorderRadius.circular(100),
              //             child: Container(
              //               padding: const EdgeInsets.all(13),
              //               decoration: const BoxDecoration(
              //                 color: AppColors.primary,
              //                 shape: BoxShape.circle,
              //               ),
              //               child: const Icon(
              //                 Icons.add,
              //                 size: 25,
              //                 color: AppColors.white,
              //               ),
              //             ),
              //           ),
              //         ),
              //       )
              //     : null,

              // floatingActionButtonLocation:
              //     FloatingActionButtonLocation.endDocked,

              // floatingActionButton: Obx(
              //   () => controller.selectedIndexTabBar.value == 1
              //       ? Container(
              //           margin: const EdgeInsets.only(bottom: 80),
              //           padding: const EdgeInsets.all(10),
              //           decoration: const BoxDecoration(
              //             color: AppColors.primary,
              //             shape: BoxShape.circle,
              //           ),
              //           child: const Icon(
              //             Icons.add,
              //             color: AppColors.white,
              //           ),
              //         )
              //       : Container(),
              // ),
              /////// body
              body: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // TabBar

                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        height: AppSize.size.height * 0.06,
                        width: AppSize.size.width,
                        color: AppColors.primaryBackgroud,
                        child: TabBar(
                          // padding: const EdgeInsets.symmetric(horizontal: 20),
                          splashFactory: NoSplash.splashFactory,
                          indicatorSize: TabBarIndicatorSize.tab,
                          onTap: (value) {
                            appLog("Tab Controller : $value");
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
                          // controller: _tabController,
                          tabs: const [
                            Tab(text: "My Service Request"),
                            Tab(text: "My Project Posting"),
                          ],
                        ),
                      ),

                      // Container(
                      //   padding: const EdgeInsets.symmetric(horizontal: 30),
                      //   height: AppSize.size.height * 0.06,
                      //   width: AppSize.size.width,
                      //   color: AppColors.primaryBackgroud,
                      //   child: TabBar(
                      //     // controller: controller.tabController,
                      //     indicatorSize: TabBarIndicatorSize.tab,
                      //     onTap: (value) {
                      //       appLog("Tab Controller : $value");
                      //       controller.selectedIndexTabBar.value = value;
                      //       controller.update();
                      //     },

                      //     indicator: const UnderlineTabIndicator(
                      //       borderRadius:
                      //           BorderRadius.all(Radius.circular(100)),
                      //       borderSide: BorderSide(
                      //         width: 3.0,
                      //         color:
                      //             AppColors.primary, // Custom underline color
                      //       ),
                      //     ),
                      //     labelColor:
                      //         AppColors.primary, // Color of selected tab
                      //     unselectedLabelColor:
                      //         Colors.grey, // Color of unselected tabs
                      //     labelStyle: const TextStyle(
                      //       fontSize: 15,
                      //       fontWeight: FontWeight.w900,
                      //       overflow: TextOverflow.ellipsis,
                      //     ),
                      //     // tabAlignment: TabAlignment.center,
                      //     isScrollable: false,

                      //     tabs: const [
                      //       Tab(text: "My Service Request"),
                      //       Tab(text: "My Project Posting"),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                  // Wrap the TabBarView in an Expanded widget
                  const Expanded(
                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        MyServiceRequest(),
                        MyProjectPosting(),
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

class MyServiceRequest extends StatelessWidget {
  const MyServiceRequest({
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
            return const CustomerMyServiceRequestCard();
          },
        ),
      ),
    );
  }
}

class MyProjectPosting extends StatelessWidget {
  const MyProjectPosting({
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
            return const CustomerMyProjectPostingCard();
          },
        ),
      ),
    );
  }
}
