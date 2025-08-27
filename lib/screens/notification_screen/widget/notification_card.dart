import 'package:boolbi_app/screens/provider_offer_screen/widget/my_offer_confirm_dialog_box.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import '../../../const/uitls/app_colors.dart';
import '../../../utils/app_size.dart';
import '../../../widgets/texts/app_text.dart';
import '../controller/notification_screen_controller.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
    required this.controller,
    // required this.item,
  });

  final NotificationScreenController controller;
  // final NotificationModel item;

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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(10),
          child: GestureDetector(
            onTap: () {
              // if (item.isRead == true) {
              //   item.isRead = false;
              // } else {
              //   item.isRead = true;
              // }
              // controller.update();
            },
            child: Stack(
              children: [
                Container(
                  width: AppSize.size.width,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    // gradient: true
                    // //  item.isRead == true
                    //     ? const LinearGradient(
                    //         begin: Alignment.topLeft,
                    //         end: Alignment.bottomRight,
                    //         colors: [
                    //           AppColors.halkaPrimaryColor,
                    //           AppColors.halkaPrimaryColor,
                    //           // AppColors.halkaPrimaryTextColor,
                    //           //  Color(0xff313131),
                    //           //  Color(0xff313131),
                    //           //   Color.fromARGB(255, 197, 176, 109),
                    //         ],
                    //       )
                    //     : const LinearGradient(
                    //         begin: Alignment.topLeft,
                    //         end: Alignment.bottomRight,
                    //         colors: [
                    //           Color(0xff9E7A4D),
                    //           Color.fromARGB(255, 197, 176, 109),
                    //         ],
                    //       ),
                  ),
                  child: const Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Icon(Icons.notifications_outlined,
                                color: AppColors.primary),
                            // child: ClipRRect(
                            //   borderRadius: BorderRadius.circular(50),
                            //   child: const AppImage(
                            //     height: 30,
                            //     width: 30,
                            //     color: Colors.amber,
                            //     path: AssetsImagesPath.demo,
                            //   ),
                            // ),
                          ),
                          // const SizedBox(
                          //     height: 10), // Space between image and text
                        ],
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              data:
                                  "There has a notification, Please read this....",
                              // data: item.message ?? "",
                              fontSize: 14,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              fontWeight:
                                  //  item.isRead == true
                                  //     ? FontWeight.w500
                                  //     :
                                  FontWeight.w600,
                              color: AppColors.primary,
                            ),
                            Gap(height: 10),
                            AppText(
                              data: "Last Wednesday at 4.42 AM",
                              // data: formatTimestamp(item.createdAt ?? ""),
                              fontSize: 12,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              color: AppColors.primary,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // if (item.isRead != true)
                //   Positioned(
                //     left: 7,
                //     top: 7,
                //     child: Container(
                //       height: 8,
                //       width: 8,
                //       decoration: BoxDecoration(
                //         color: Colors.amber[800],
                //         shape: BoxShape.circle,
                //       ),
                //     ),
                //   ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String formatTimestamp(String timestamp) {
  try {
    DateTime dateTime = DateTime.parse(timestamp);
    return DateFormat("dd-MMM-yyyy, h:mm a").format(dateTime);
  } catch (e) {
    return "Invalid date";
  }
}
