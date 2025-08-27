import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/uitls/app_colors.dart';
import '../../../utils/app_size.dart';
import '../../../widgets/app_image/app_image.dart';
import '../../../widgets/texts/app_text.dart';

class UserCategoryCard extends StatelessWidget {
  const UserCategoryCard({
    super.key,
    // required this.item,
  });

  // final SellerTrendingListModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.customerCategoryViewScreen);
              // Get.toNamed(AppRoutes.userProductDetailsScreen, arguments: item.id);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: AppImage(
                          path: AssetsImagesPath.demoImage,
                          // url: item.primary ?? "",
                          fit: BoxFit.fill,
                          width: AppSize.size.width,
                        ),
                      ),
                    ),
                    const Gap(height: 10),
                    const AppText(
                      data: "Plumber",
                      // data: "\$${item.price}",
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.end,
                    ),
                    //  Gap(height: 8),
                  ],
                ),
              ),
            )

            //  Stack(
            //   children: [
            //     Align(
            //       alignment: Alignment.center,
            //       child: Container(
            //         alignment: Alignment.center,
            //         decoration: BoxDecoration(
            //             color: AppColors.deepWhte,
            //             border: Border.all(
            //               color: AppColors.black400,
            //             ),
            //             borderRadius: BorderRadius.circular(10)),
            //         child: ClipRRect(
            //           borderRadius: BorderRadius.circular(10),
            //           child: AppImage(
            //             path: AssetsImagesPath.demoImage,
            //             // url: item.primary ?? "",
            //             fit: BoxFit.fill,
            //             width: AppSize.size.width,
            //           ),
            //         ),
            //       ),
            //     ),
            //     Align(
            //       alignment: Alignment.bottomCenter,
            //       child: ClipRRect(
            //         borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
            //         child: BackdropFilter(
            //           filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            //           child: Container(
            //             alignment: Alignment.center,
            //             padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            //             // alignment: Alignment.center,
            //             height: AppSize.size.height * 0.055,
            //             // width: AppSize.size.width,
            //             decoration: BoxDecoration(borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)), color: Colors.black.withOpacity(.3)),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                Expanded(

            //                   child: AppText(
            //                     data: "\$500",
            //                     // data: "\$${item.price}",
            //                     color: AppColors.deepWhte,
            //                     fontWeight: FontWeight.w600,
            //                     fontSize: 20,
            //                     maxLines: 1,
            //                     overflow: TextOverflow.ellipsis,
            //                     textAlign: TextAlign.end,
            //                   ),
            //                 ),

            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //     )
            //   ],
            // ),
            ),
      ),
    );
  }
}
