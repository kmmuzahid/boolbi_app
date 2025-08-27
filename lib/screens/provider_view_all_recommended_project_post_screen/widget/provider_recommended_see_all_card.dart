import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/uitls/app_colors.dart';
import '../../../widgets/texts/app_text.dart';

class ProviderRecommendedSeeAllCard extends StatelessWidget {
  const ProviderRecommendedSeeAllCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.providerPostDetailsScreen);
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
                // Container(
                //   height: 100,
                //   width: 150,
                //   alignment: Alignment.topLeft,
                //   decoration: BoxDecoration(
                //     color: Colors.red,
                //     borderRadius: BorderRadius.circular(5),
                //     image: const DecorationImage(
                //       image: AssetImage(AssetsImagesPath.demoImage2),
                //     ),
                //   ),
                //   child: Container(
                //     decoration: const BoxDecoration(
                //         color: Colors.red,
                //         borderRadius: BorderRadius.only(
                //             topLeft: Radius.circular(5),
                //             bottomRight: Radius.circular(5))),
                //     padding:
                //         const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                //     child: const AppText(data: "Expired"),
                //   ),
                // ),
                Container(
                  height: 100,
                  width: 150,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                      image: AssetImage(AssetsImagesPath.demoImage2),
                    ),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: AppColors.greenColorStatus,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: const AppText(
                        data: "Valid",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.deepWhte),
                  ),
                  // Container(
                  //   decoration: const BoxDecoration(
                  //       color: Colors.red,
                  //       borderRadius: BorderRadius.only(
                  //           topLeft: Radius.circular(5),
                  //           bottomRight: Radius.circular(5))),
                  //   padding:
                  //       const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                  //   child: const AppText(data: "Expired",fontWeight: FontWeight.w700,color: AppColors.white,),
                  // ),
                ),
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(5),
                //   child: const AppImage(
                //     // height: 90,
                //     width: 150,
                //     path: AssetsImagesPath.demoImage,
                //     // url: "",
                //     fit: BoxFit.fill,
                //   ),
                // ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        data: "Customer Name - Ajay",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      // AppText(
                      //   data: "Brothers Limited Company",
                      //   fontSize: 16,
                      //   fontWeight: FontWeight.w500,
                      //   maxLines: 2,
                      //   overflow: TextOverflow.ellipsis,
                      // ),
                      SizedBox(height: 5),
                      // AppText(
                      //   data:
                      //       "Im a Passionate And Experienced Dj Offering High-Energy Music Service im a Passionate and Experienced Dj offering high-energy music service",
                      //   // data: formatDateOrderHistory(data.createdAt ?? ""),
                      //   fontSize: 14,
                      //   fontWeight: FontWeight.w500,
                      //   maxLines: 2,
                      //   overflow: TextOverflow.ellipsis,
                      // ),
                      // SizedBox(height: 5),
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Icon(Icons.location_on_outlined,
                      //         color: AppColors.primary, size: 14),
                      //     Flexible(
                      //       child: AppText(
                      //         data:
                      //             "Im a Passionate And Experienced Dj Offering High-Energy Music Service im a passionate and experienced Dj offering high-energy music service",
                      //         // data: formatDateOrderHistory(data.createdAt ?? ""),
                      //         fontSize: 14,
                      //         fontWeight: FontWeight.w500,
                      //         maxLines: 1,
                      //         overflow: TextOverflow.ellipsis,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.webhook_rounded,
                              color: AppColors.primary, size: 14),
                          Flexible(
                            child: AppText(
                              data: "Web Development",
                              // data: formatDateOrderHistory(data.createdAt ?? ""),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on_outlined,
                              color: AppColors.primary, size: 14),
                          Flexible(
                            child: AppText(
                              data: "Australia, Rankin St",
                              // data: formatDateOrderHistory(data.createdAt ?? ""),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.timer_outlined,
                              color: AppColors.primary, size: 14),
                          Flexible(
                            child: AppText(
                              data: "Deadline : 23rd May, 2025",
                              // data: formatDateOrderHistory(data.createdAt ?? ""),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppText(
                            data: "View Details",
                            // data: "\$${data.price ?? 0}",
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.primary,
                            color: AppColors.primary,
                          ),
                          // AppText(
                          //   data: "View Details",
                          //   // data: "\$${data.price ?? 0}",
                          //   fontSize: 14,
                          //   fontWeight: FontWeight.w600,
                          //   decoration: TextDecoration.underline,
                          //   decorationColor: Colors.green,
                          //   color: Colors.green,
                          // ),
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
