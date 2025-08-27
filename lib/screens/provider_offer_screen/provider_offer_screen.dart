import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/provider_offer_screen/controllers/provider_offer_screen_controller.dart';
import 'package:boolbi_app/screens/provider_offer_screen/widget/provider_my_offer_card.dart';
import 'package:boolbi_app/screens/provider_offer_screen/widget/provider_requested_order_card.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProviderOfferScreen extends StatelessWidget {
  const ProviderOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ProviderOfferScreenController(),
        builder: (controller) {
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: AppColors.primaryBackgroud,
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
                            // controller.selectedIndexTabBar.value = value;
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
                            Tab(text: "My Offers"),
                            Tab(text: "My Service Requests"),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Wrap the TabBarView in an Expanded widget
                  Expanded(
                    child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        MyOffersView(controller: controller),
                        ServiceRequestsView(controller: controller),
                        // Container(color: Colors.red),
                      ],
                    ),
                  ),
                  // Button
                  //  Padding(
                  //     padding: const EdgeInsets.only(bottom: 100,right: 20,left: 20),
                  //     child: GestureDetector(
                  //       onTap: () {
                  //         Get.toNamed(AppRoutes.providerCreateOfferScreen);

                  //       },
                  //       child: Container(
                  //         width: Get.width,
                  //         height: AppSize.width(value: 50.0),
                  //         alignment: Alignment.center,
                  //         decoration: BoxDecoration(
                  //             color: AppColors.primary,
                  //             borderRadius: BorderRadius.circular(
                  //                 AppSize.width(value: 8))),
                  //         child:
                  //         // controller.isLoading.value
                  //         //     ? const Center(
                  //         //         child: CircularProgressIndicator(
                  //         //           color: Colors.white,
                  //         //         ),
                  //         //       )
                  //         //     :
                  //             const AppText(
                  //                 data: "Create Offer",
                  //                 fontSize: 18,
                  //                 color: AppColors.grey50,
                  //                 fontWeight: FontWeight.w600,
                  //               ),
                  //       ),
                  //     ),
                  //   ),
                ],
              ),
            ),
          );
        });
  }
}

class MyOffersView extends StatelessWidget {
  const MyOffersView({
    super.key,
    required this.controller,
  });
  final ProviderOfferScreenController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // const AppText(
              //   data: "My Offers",
              //   fontSize: 20,
              //   color: AppColors.primary,
              //   fontWeight: FontWeight.w700,
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 45, // reduced height
                  width: 110, // reduced width
                  alignment: Alignment.center,
                  child: DropdownButtonFormField2<String>(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.deepWhte,
                      focusColor: Colors.red,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.primary, width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.primary, width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    hint: const Text(
                      'Sort',
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.grey600), // smaller font
                    ),
                    items: controller.sortListDropDownValueList
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 12, // smaller font
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select sort';
                      }
                      return null;
                    },
                    onChanged: (value) {},
                    onSaved: (value) {},
                    buttonStyleData: const ButtonStyleData(),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.swap_vert,
                        color: Colors.black45,
                        size: 18, // smaller icon size
                      ),
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        color: AppColors.deepWhte,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10), // reduced padding
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
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
                  return const ProviderMyOfferCard();
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ServiceRequestsView extends StatelessWidget {
  const ServiceRequestsView({
    super.key,
    required this.controller,
  });
  final ProviderOfferScreenController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // const AppText(
              //   data: "Service Requests",
              //   fontSize: 20,
              //   color: AppColors.primary,
              //   fontWeight: FontWeight.w700,
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 45, // reduced height
                  width: 110, // reduced width
                  alignment: Alignment.center,
                  child: DropdownButtonFormField2<String>(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.deepWhte,
                      focusColor: Colors.red,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.primary, width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColors.primary, width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    hint: const Text(
                      'Sort',
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.grey600), // smaller font
                    ),
                    items: controller.sortListDropDownValueList
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 12, // smaller font
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select sort';
                      }
                      return null;
                    },
                    onChanged: (value) {},
                    onSaved: (value) {},
                    buttonStyleData: const ButtonStyleData(),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.swap_vert,
                        color: Colors.black45,
                        size: 18, // smaller icon size
                      ),
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        color: AppColors.deepWhte,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10), // reduced padding
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
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
                  return const ProviderServiceRequestsCard();
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
