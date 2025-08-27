// import 'package:boolbi_app/const/uitls/app_colors.dart';
// import 'package:boolbi_app/screens/customer_runing_project_delivery_request_screen/widget/delivery_request_accepted_review_dialog.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:boolbi_app/utils/app_size.dart';
// import 'package:boolbi_app/utils/gap.dart';
// import 'package:boolbi_app/widgets/texts/app_text.dart';

// acceptDeliveryRequestConfirmDialog() {
//   Get.dialog(Dialog(
//     insetPadding: const EdgeInsets.all(20),
//     backgroundColor: AppColors.white,
//     child: Padding(
//       padding: EdgeInsets.all(
//         AppSize.width(value: 20),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const Gap(height: 50),
//           const AppText(
//             data: "Are You Sure You Want To Accept Delivery Request?",
//             fontWeight: FontWeight.bold,
//             fontSize: 20,
//             color: AppColors.primary,
//             textAlign: TextAlign.center,
//           ),
//           const Gap(height: 30),
//           const AppText(
//             data:
//                 "This Action is for accept the request, if you're sure ,please confirm your decision",
//             textAlign: TextAlign.center,
//             height: 1.5,
//           ),
//           const Gap(height: 50),
//           Row(
//             children: [
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 10),
//                   child: GestureDetector(
//                     onTap: () {

//                       Get.closeAllDialogs();
//                       // deliveryNoticeDialog();
//                       // Get.toNamed(AppRoutes.welcomePage);
//                     },
//                     child: Container(
//                       width: Get.width,
//                       height: AppSize.width(value: 50.0),
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         color: AppColors.white,
//                         borderRadius: BorderRadius.circular(
//                           AppSize.width(value: 8),
//                         ),
//                         border: Border.all(color: AppColors.primary)
//                       ),
//                       child:
//                           // controller.isLoading.value
//                           //     ? const Center(
//                           //         child: CircularProgressIndicator(
//                           //           color: Colors.white,
//                           //         ),
//                           //       )
//                           //     :
//                           const AppText(
//                         data: "No",
//                         fontSize: 18,
//                         color: AppColors.primary,
//                         fontWeight: FontWeight.w900,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 10),
//                   child: GestureDetector(
//                     onTap: () {
//                    deliveryRequestCcceptedReviewDialog();
//                       // deliveryNoticeDialog();
//                       // Get.toNamed(AppRoutes.welcomePage);
//                     },
//                     child: Container(
//                       width: Get.width,
//                       height: AppSize.width(value: 50.0),
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         color: Colors.green,
//                         borderRadius: BorderRadius.circular(
//                           AppSize.width(value: 8),
//                         ),
//                       ),
//                       child:
//                           // controller.isLoading.value
//                           //     ? const Center(
//                           //         child: CircularProgressIndicator(
//                           //           color: Colors.white,
//                           //         ),
//                           //       )
//                           //     :
//                           const AppText(
//                         data: "Yes",
//                         fontSize: 18,
//                         color: AppColors.grey50,
//                         fontWeight: FontWeight.w900,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const Gap(height: 20),
//         ],
//       ),
//     ),
//   ));
// }
