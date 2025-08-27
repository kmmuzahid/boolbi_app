import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image_circular.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/uitls/app_colors.dart';
import '../../../widgets/texts/app_text.dart';

class CustomerViewDeliveryRequestListCard extends StatelessWidget {
  const CustomerViewDeliveryRequestListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.customerRuningProjectDeliveryRequestScreen);
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
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: AppText(
                                    data: "Brothers Limited Company",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on_outlined,
                                    color: AppColors.primaryWithOpacityW6,
                                    size: 14),
                                Flexible(
                                  child: AppText(
                                    data:
                                        "Berlin, Germany's Capital H/202",
                                    // data: formatDateOrderHistory(data.createdAt ?? ""),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    color: AppColors.primaryWithOpacityW6,
                                  ),
                                ),
                                const Gap(width: 10),
                              ],
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(5)),
                        child: const AppText(
                          data: "Check",
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      // TextButton(

                      //     style: const ButtonStyle(backgroundColor:  MaterialStatePropertyAll(AppColors.primary)   ),

                      //     onPressed: (){}, child: Padding(
                      //       padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                      //       child: AppText(data: "Check",color: AppColors.white, fontWeight: FontWeight.w700,),
                      //     )),
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
