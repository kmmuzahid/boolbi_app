import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image_circular.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/uitls/app_colors.dart';
import '../../../widgets/texts/app_text.dart';

class CustomerPostOfferRequestCard extends StatelessWidget {
  const CustomerPostOfferRequestCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.customerPostOfferRequestDetailsScreen);
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
                  child: const AppImageCircular(
                    height: 65,
                    width: 65,
                    // width: 150,
                    path: AssetsImagesPath.demoImage,
                    // url: "",
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            flex: 5,
                            child: AppText(
                              data: "Service Provider : Apple",
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: AppText(
                                data: "\$300",
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      AppText(
                        data: "Project ELF : Wedding Service",
                        // data: formatDateOrderHistory(data.createdAt ?? ""),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        color: AppColors.primaryWithOpacityW6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on_outlined,
                                  color: AppColors.primaryWithOpacityW6,
                                  size: 14),
                              AppText(
                                data: "Berlin, Germany's capital H/202",
                                // data: formatDateOrderHistory(data.createdAt ?? ""),
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                color: AppColors.primaryWithOpacityW6,
                              ),
                            ],
                          ),
                          Flexible(
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                Flexible(
                                  child: AppText(
                                    data: "4.3/5",
                                    // data: "\$${data.price ?? 0}",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    // decoration: TextDecoration.underline,
                                    // decorationColor: AppColors.primary,
                                    color: AppColors.primary,

                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Gap(width: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
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
