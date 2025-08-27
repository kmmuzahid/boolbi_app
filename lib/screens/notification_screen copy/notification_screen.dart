// import 'package:duck_app/utils/gap.dart';
// import 'package:duck_app/widgets/custom_appbar.dart/custom_appbar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:duck_app/const/uitls/app_colors.dart';
// import 'package:duck_app/screens/notification_screen/controller/notification_screen_controller.dart';
// import 'widget/notification_card.dart';

// class NotificationScreen extends StatelessWidget {
//   const NotificationScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder(
//       init: NotificationScreenController(),
//       builder: (controller) {
//         return AnnotatedRegion(
//           value: const SystemUiOverlayStyle(
//             statusBarIconBrightness: Brightness.dark,
//             systemNavigationBarIconBrightness: Brightness.dark,
//             statusBarColor: Colors.white,
//           ),
//           child: Scaffold(
//             backgroundColor: AppColors.primary,
//             appBar: const CustomAppBar(text: "Notification"),
//             body: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: Column(
//                 children: [
//                   const Gap(height: 10),
//                   Expanded(
//                     child: Obx(
//                       () => controller.isLoading.value
//                           ? const Center(
//                               child: CircularProgressIndicator(
//                                   color: Colors.white))
//                           :  notificationList.isEmpty
//                             ? const Center(
//                                 child: Text(
//                                   "No notifications found.",
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                               )
//                             :ListView.builder(
//                               controller: controller.scrollController,
//                               itemCount: notificationList.length + 1,
//                               itemBuilder: (context, index) {
//                                 if (index == notificationList.length) {
//                                   return controller.isLoadingMore.value
//                                       ? const Padding(
//                                           padding: EdgeInsets.all(8.0),
//                                           child: Center(
//                                               child:
//                                                   CircularProgressIndicator()),
//                                         )
//                                       : const SizedBox();
//                                 }
//                                 var item = notificationList[index];
//                                 return NotificationCard(
//                                   controller: controller,
//                                   item: item,
//                                 );
//                               },
//                             ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
