import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/provider_offer_screen/widget/my_offer_confirm_dialog_box.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import '../../../const/uitls/app_colors.dart';
import '../../../widgets/app_image/app_image.dart';
import '../../../widgets/texts/app_text.dart';

class CustomerCompletedProjectCard extends StatelessWidget {
  const CustomerCompletedProjectCard({
    super.key,
  });

  // Dummy data for demonstration. Replace with your actual data source.
  // final List<String> jobList = ["Job 1", "Job 2", "Job 3"];

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey("abc"),

      // Start action pane (left swipe)
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(
          onDismissed: () async {
            await myOfferConfirmDialogBox();
          },
        ),
        children: [
          SlidableAction(
            onPressed: (context) async {
              await myOfferConfirmDialogBox();
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
          // Add more start actions if needed
        ],
      ),

      // End action pane (right swipe)
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) async {
              await myOfferConfirmDialogBox();
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
          // SlidableAction(
          //   onPressed: (context) {
          //     // Define archive or other action here
          //   },
          //   backgroundColor: Colors.blue,
          //   foregroundColor: Colors.white,
          //   icon: Icons.archive,
          //   label: 'Archive',
          // ),
          // SlidableAction(
          //   onPressed: (context) {
          //     // Define save or other action here
          //   },
          //   backgroundColor: Colors.green,
          //   foregroundColor: Colors.white,
          //   icon: Icons.save,
          //   label: 'Save',
          // ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(AppRoutes.customerCompletedProjectDeliveryRequestScreen);
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
          child: Material(
            elevation: 3,
            borderRadius: BorderRadius.circular(5),
            child: Container(
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
                      width: 150,
                      path: AssetsImagesPath.demoImage2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          data: "Project Name : Gerden",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 5),
                        AppText(
                          data:
                              "I'm a Passionate And Experienced DJ Offering High-Energy Music Service.",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on_outlined,
                                color: AppColors.primary, size: 14),
                            Flexible(
                              child: AppText(
                                data: "Location Details",
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
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.primary,
                              color: AppColors.primary,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
