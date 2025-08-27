// import 'package:boolbi_app/const/uitls/app_colors.dart';
// import 'package:boolbi_app/utils/gap.dart';
// import 'package:boolbi_app/widgets/texts/app_text.dart';
// import 'package:flutter/material.dart';

// Widget orderTrackWidget(
//     {required bool value, required String title, String? date}) {
//   return Row(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Container(
//         height: 35,
//         decoration: BoxDecoration(
//             color: AppColors.primary.withOpacity(.2), shape: BoxShape.circle),
//         child: Checkbox(
//           activeColor: AppColors.primary,
//           value: value,
//           shape: const CircleBorder(),
//           onChanged: (val) {},
//         ),
//       ),
//       const Gap(width: 10),
//       Expanded( // Use Expanded to ensure the text takes available space and wraps correctly
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Title text with ellipsis for overflow and responsive font size
//             AppText(
//               data: title,
//               color: AppColors.primary,
//               fontSize: 15,
//               fontWeight: FontWeight.w500,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const Gap(height: 4), // Add a little gap between title and date text
//             // Date text with ellipsis for overflow and adjusted font size
//             AppText(
//               data: date ?? "20 May 2025, 10.00 PM", // Fallback value for date
//               color: AppColors.primary,
//               fontWeight: FontWeight.w500,
//               fontSize: 13,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ],
//         ),
//       ),
//     ],
//   );
// }