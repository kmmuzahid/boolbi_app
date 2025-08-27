// import 'package:duck_app/const/images/app_asset_images.dart';
// import 'package:duck_app/utils/gap.dart';
// import 'package:duck_app/widgets/app_image/app_image.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import '../../../const/uitls/app_colors.dart';
// import '../../../utils/app_size.dart';
// import '../../../widgets/texts/app_text.dart';
// import '../controller/notification_screen_controller.dart';
// import '../model/notification_model.dart';

// class NotificationCard extends StatelessWidget {
//   const NotificationCard({
//     super.key,
//     required this.controller,
//     required this.item,
//   });

//   final NotificationScreenController controller;
//   final NotificationModel item;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//       child: Material(
//         elevation: 1,
//         borderRadius: BorderRadius.circular(10),
//         child: GestureDetector(
//           onTap: () {
//             // if (item.isRead == true) {
//             //   item.isRead = false;
//             // } else {
//             //   item.isRead = true;
//             // }
//             // controller.update();
//           },
//           child: Stack(
//             children: [
//               Container(
//                 width: AppSize.size.width,
//                 padding: const EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   // color: Colors.transparent,
//                   borderRadius: BorderRadius.circular(10),
//                   gradient: true
//                   //  item.isRead == true 
//                       ? const LinearGradient(
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                           colors: [
//                             AppColors.halkaPrimaryColor,
//                             AppColors.halkaPrimaryColor,
//                             // AppColors.halkaPrimaryTextColor,
//                             //  Color(0xff313131),
//                             //  Color(0xff313131),
//                             //   Color.fromARGB(255, 197, 176, 109),
//                           ],
//                         )
//                       : const LinearGradient(
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                           colors: [
//                             Color(0xff9E7A4D),
//                             Color.fromARGB(255, 197, 176, 109),
//                           ],
//                         ),
//                 ),
//                 child: Row(
//                   children: [
//                     Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 7),
//                           child: Icon(Icons.notifications, color: Colors.white),
//                           // child: ClipRRect(
//                           //   borderRadius: BorderRadius.circular(50),
//                           //   child: const AppImage(
//                           //     height: 30,
//                           //     width: 30,
//                           //     color: Colors.amber,
//                           //     path: AssetsImagesPath.demo,
//                           //   ),
//                           // ),
//                         ),
//                         // const SizedBox(
//                         //     height: 10), // Space between image and text
//                       ],
//                     ),
//                     const SizedBox(width: 10),
//                     Flexible(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           AppText(
//                             data: item.message ?? "",
//                             fontSize: 14,
//                             maxLines: 3,
//                             overflow: TextOverflow.ellipsis,
//                             fontWeight: item.isRead == true
//                                 ? FontWeight.w500
//                                 : FontWeight.w600,
//                             color: AppColors.deepWhte,
//                           ),
//                           const Gap(height: 10),
//                           AppText(
//                             // data: "Last Wednesday at 4.42 AM",
//                             data: formatTimestamp(item.createdAt ?? ""),
//                             fontSize: 12,
//                             maxLines: 1,
//                             overflow: TextOverflow.ellipsis,
//                             color: AppColors.deepWhte,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               // if (item.isRead != true)
//               //   Positioned(
//               //     left: 7,
//               //     top: 7,
//               //     child: Container(
//               //       height: 8,
//               //       width: 8,
//               //       decoration: BoxDecoration(
//               //         color: Colors.amber[800],
//               //         shape: BoxShape.circle,
//               //       ),
//               //     ),
//               //   ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// String formatTimestamp(String timestamp) {
//   try {
//     DateTime dateTime = DateTime.parse(timestamp);
//     return DateFormat("dd-MMM-yyyy, h:mm a").format(dateTime);
//   } catch (e) {
//     return "Invalid date";
//   }
// }
