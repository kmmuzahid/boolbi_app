// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:swipe_buy_shopping_app/const/uitls/app_colors.dart';
// import 'package:swipe_buy_shopping_app/screens/navigation_screen/widgets/custom_appbar_2.dart';
// import 'package:swipe_buy_shopping_app/screens/seller_complete_order_details_screen/controller/seller_complete_order_details_screen_controller.dart';
// import 'package:swipe_buy_shopping_app/utils/app_size.dart';
// import 'package:swipe_buy_shopping_app/utils/gap.dart';
// import 'package:swipe_buy_shopping_app/widgets/texts/app_text.dart';

// class SellerCompleteOrderDetailsScreen extends StatelessWidget {
//   const SellerCompleteOrderDetailsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder(
//       init: SellerCompleteOrderDetailsScreenController(),
//       builder: (controller) {
//         return AnnotatedRegion(
//           value: const SystemUiOverlayStyle(
//             statusBarIconBrightness: Brightness.dark,
//             systemNavigationBarIconBrightness: Brightness.dark,
//             statusBarColor: AppColors.deepWhte,
//           ),
//           child: Scaffold(
//             backgroundColor: AppColors.halkaGrey,
//             appBar: customAppBar2(text: "Complete Order Details"),
//             body: SingleChildScrollView(
//               child: Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       // Gap(height: 20),
//                       Material(
//                         elevation: 5,
//                         borderRadius: BorderRadius.circular(20),
//                         child: Container(
//                           height: AppSize.size.height * 0.85,
//                           decoration: BoxDecoration(
//                             color: Colors.amber,
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Row(
//                             children: [
//                               Expanded(
//                                 child: Container(
//                                   decoration: const BoxDecoration(
//                                     color: Color(0xff262626),
//                                     borderRadius: BorderRadius.only(
//                                         topLeft: Radius.circular(20),
//                                         bottomLeft: Radius.circular(20)),
//                                   ),
//                                   child: Padding(
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: 20, vertical: 10),
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceEvenly,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         AppText(
//                                           data: "Serial No.",
//                                           color: AppColors.deepWhte,
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 16,
//                                         ),
//                                         AppText(
//                                           data: "Customer Name",
//                                           color: AppColors.deepWhte,
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 16,
//                                         ),
//                                         AppText(
//                                           data: "Phone Number",
//                                           color: AppColors.deepWhte,
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 16,
//                                         ),
//                                         AppText(
//                                           data: "Address",
//                                           color: AppColors.deepWhte,
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 16,
//                                         ),
//                                         AppText(
//                                           data: "City",
//                                           color: AppColors.deepWhte,
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 16,
//                                         ),
//                                         AppText(
//                                           data: "Quantity",
//                                           color: AppColors.deepWhte,
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 16,
//                                         ),
//                                         AppText(
//                                           data: "Product Name",
//                                           color: AppColors.deepWhte,
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 16,
//                                         ),
//                                         Container(
//                                           padding: EdgeInsets.symmetric(
//                                               horizontal: 0, vertical: 8),
//                                           child: AppText(
//                                             data: "Product Status",
//                                             color: AppColors.deepWhte,
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 16,
//                                           ),
//                                         ),
//                                         AppText(
//                                           data: "Payment Method",
//                                           color: AppColors.deepWhte,
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 16,
//                                         ),
//                                         Container(
//                                           padding: EdgeInsets.symmetric(
//                                               horizontal: 0, vertical: 8),
//                                           child: AppText(
//                                             data: "Status",
//                                             color: AppColors.deepWhte,
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 16,
//                                             // textAlign: TextAlign.start,s
//                                           ),
//                                         ),
//                                         AppText(
//                                           data: "Created",
//                                           color: AppColors.deepWhte,
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 16,
//                                         ),
//                                         AppText(
//                                           data: "Actions",
//                                           color: AppColors.deepWhte,
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 16,
//                                         ),
//                                         AppText(
//                                           data: "Total Price",
//                                           color: AppColors.deepWhte,
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 16,
//                                         ),
//                                         Container(
//                                           padding: EdgeInsets.symmetric(
//                                               horizontal: 0, vertical: 8),
//                                           child: AppText(
//                                             data: "Delivery",
//                                             color: AppColors.deepWhte,
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 16,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     color: AppColors.deepWhte,
//                                     borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(20),
//                                         bottomRight: Radius.circular(20)),
//                                   ),
//                                   child: Padding(
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: 20, vertical: 10),
//                                     child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceEvenly,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         AppText(
//                                           data: "#3545421",
//                                           color: Color(0xff2A2A2A),
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 16,
//                                           maxLines: 1,
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                         AppText(
//                                           data: "Mahbubul Qareem",
//                                           color: Color(0xff2A2A2A),
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 16,
//                                           maxLines: 1,
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                         AppText(
//                                           data: "669465145484155",
//                                           color: Color(0xff2A2A2A),
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 16,
//                                           maxLines: 1,
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                         AppText(
//                                           data: "Kathmandu Central Park",
//                                           color: Color(0xff2A2A2A),
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 16,
//                                           maxLines: 1,
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                         AppText(
//                                           data: "Katmandu",
//                                           color: Color(0xff2A2A2A),
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 16,
//                                           maxLines: 1,
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                         AppText(
//                                           data: "2 piece",
//                                           color: Color(0xff2A2A2A),
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 16,
//                                           maxLines: 1,
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                         AppText(
//                                           data: "Cozy winter jackets",
//                                           color: Color(0xff2A2A2A),
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 16,
//                                           maxLines: 1,
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                         Container(
//                                           padding: EdgeInsets.symmetric(
//                                               horizontal: 0, vertical: 8),
//                                           decoration: BoxDecoration(
//                                               // color: Colors.blue[300],
//                                               // borderRadius:
//                                               // BorderRadius.circular(10),
//                                               ),
//                                           child: Row(
//                                             children: [
//                                               AppText(
//                                                 data: "Paid",
//                                                 color: AppColors.green,
//                                                 fontWeight: FontWeight.w600,
//                                                 fontSize: 15,
//                                                 maxLines: 1,
//                                                 overflow: TextOverflow.ellipsis,
//                                               ),
//                                               Gap(width: 5),
//                                               Icon(
//                                                 Icons
//                                                     .check_circle_outline_rounded,
//                                                 color: AppColors.green,
//                                                 size: 16,
//                                               )
//                                             ],
//                                           ),
//                                         ),
//                                         AppText(
//                                           data: "Cash on Delivery",
//                                           color: Color(0xff2A2A2A),
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 16,
//                                           maxLines: 1,
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                         Container(
//                                           padding: EdgeInsets.symmetric(
//                                               horizontal: 15, vertical: 8),
//                                           decoration: BoxDecoration(
//                                             color: AppColors.green,
//                                             borderRadius:
//                                                 BorderRadius.circular(10),
//                                           ),
//                                           child: AppText(
//                                             data: "Completed",
//                                             color: AppColors.deepWhte,
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 15,
//                                             maxLines: 1,
//                                             overflow: TextOverflow.ellipsis,
//                                           ),
//                                         ),
//                                         AppText(
//                                           data: "Nov 6, 2024 3:16 PM",
//                                           color: Color(0xff2A2A2A),
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 16,
//                                           maxLines: 1,
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                         AppText(
//                                           data: "Delete",
//                                           color: Color(0xffE84700),
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 16,
//                                           maxLines: 1,
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                         AppText(
//                                           data: "\$8.414",
//                                           color: Color(0xff2A2A2A),
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: 16,
//                                           maxLines: 1,
//                                           overflow: TextOverflow.ellipsis,
//                                         ),
//                                         Container(
//                                           padding: EdgeInsets.symmetric(
//                                               horizontal: 15, vertical: 8),
//                                           decoration: BoxDecoration(
//                                             color: Colors.grey.shade400,
//                                             borderRadius:
//                                                 BorderRadius.circular(10),
//                                           ),
//                                           child: AppText(
//                                             data: "Send by Pathao",
//                                             color: AppColors.deepWhte,
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 15,
//                                             maxLines: 1,
//                                             overflow: TextOverflow.ellipsis,
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   )),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
