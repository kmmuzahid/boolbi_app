import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/uitls/app_colors.dart';
import '../../../widgets/app_image/app_image.dart';
import '../../../widgets/texts/app_text.dart';

class CustomerSearchScreenCard extends StatelessWidget {
  const CustomerSearchScreenCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.customerPostDetailsScreen);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
        child: Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(5),
          child: Container(
            // margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: AppColors.deepWhte,
              borderRadius: BorderRadius.circular(5),
            ),
            padding:
                const EdgeInsets.only(bottom: 10, top: 10, left: 5, right: 5),
            child: Row(
              children: [
                const Gap(width: 5),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: const AppImage(
                    // height: 90,
                    width: 150,
                    path: AssetsImagesPath.demoImage,
                    // url: "",
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppText(
                        data: "Service Provider : Apple",
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 5),
                      AppText(
                        data:
                            "Spark Tech Agency Seeking a Talented UX/UI Designer to create intuitive and visually appealing designs platform",
                        // data: formatDateOrderHistory(data.createdAt ?? ""),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        color: AppColors.primaryWithOpacityW6,
                      ),
                      // const SizedBox(height: 10),
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Icon(Icons.location_on_outlined,
                      //         color: AppColors.primaryWithOpacityW6, size: 14),
                      //     Flexible(
                      //       child: AppText(
                      //         data: "Califonia, Dhaka , Bangladesh",
                      //         // data: formatDateOrderHistory(data.createdAt ?? ""),
                      //         fontSize: 14,
                      //         fontWeight: FontWeight.w500,
                      //         maxLines: 1,
                      //         overflow: TextOverflow.ellipsis,
                      //         color: AppColors.primaryWithOpacityW6,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppText(
                            data: "View Details",
                            // data: "\$${data.price ?? 0}",
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.primary,
                            color: AppColors.primary,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
