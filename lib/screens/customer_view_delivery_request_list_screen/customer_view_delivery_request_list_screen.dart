import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/customer_view_delivery_request_list_screen/controllers/customer_view_delivery_request_list_screen_controller.dart';
import 'package:boolbi_app/screens/customer_view_delivery_request_list_screen/widget/customer_view_delivery_request_list_card.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_appbar/user_custom_appbar.dart';

class CustomerViewDeliveryRequestListScreen extends StatelessWidget {
  const CustomerViewDeliveryRequestListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerViewDeliveryRequestListScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "Delivery Request"),
            body: Column(
              children: [
           
                const Gap(height: 20),
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
                        return const CustomerViewDeliveryRequestListCard();
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


