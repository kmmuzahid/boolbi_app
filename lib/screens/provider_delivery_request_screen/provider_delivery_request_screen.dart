import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/provider_delivery_request_screen/controllers/provider_delivery_request_screen_controller.dart';
import 'package:boolbi_app/screens/provider_delivery_request_screen/widget/delivery_dailog.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_appbar/user_custom_appbar.dart';

class ProviderDeliveryRequestScreen extends StatelessWidget {
  const ProviderDeliveryRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ProviderDeliveryRequestScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "Delivery Request"),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(height: 20),
                  const Gap(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      alignment: Alignment.center,
                      width: AppSize.size.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xffEDEDEF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const AppText(
                        data:
                            "Garden Maintenance - Lawn Mowing & Hedge Trimming",
                        color: AppColors.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Gap(height: 10),
                  // const CustomerDeliveryRequestCard(),
                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Additional Info :",
                          fontSize: 16,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: AppInputWidgetTwo(
                        minLines: 3,
                        // controller: controller.emailTextEditingController,
                        hintText: "Type",
                        cursorColor: AppColors.primary,
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: AppColors.primary,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        isEmail: true,
                        fillColor: AppColors.deepWhte,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.multiline,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                    ),
                  ),

                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Upload Invoice :",
                          fontSize: 16,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ),

                  const Gap(height: 10),
                  Obx(() {
                    return GestureDetector(
                      onTap: controller.pickedFileName.value == ""
                          ? controller.callFilePicker
                          : null,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        constraints: BoxConstraints(
                          minHeight: AppSize.height(value: 50.0),
                          maxHeight: AppSize.height(value: 60.0),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: controller.isVideoValid.value
                                  ? AppColors.validationError
                                  : AppColors.grey800),
                          borderRadius:
                              BorderRadius.circular(AppSize.width(value: 10)),
                          color: AppColors.deepWhte,
                        ),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(AppSize.width(value: 10)),
                          child: Stack(
                            children: [
                              if (controller.pickedFileName.value == "")
                                const Align(
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.file_upload_outlined,
                                      color: AppColors.primary,
                                    )
                                    //  AppImage(width: AppSize.width(value: 25.0), height: AppSize.width(value: 25.0), path: AssetsIconsPath.google, iconColor: AppColors.primary),
                                    ),
                              if (controller.pickedFileName.value == "")
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: AppText(
                                      data: "Files",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              if (controller.pickedFileName.value != "")
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              const Gap(width: 10),
                                              Expanded(
                                                child: AppText(
                                                  data:
                                                      "${controller.pickedFileName.value} ",
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ),
                                          AppText(
                                              data:
                                                  "Size: ${controller.pickedFileSize.value}"),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: IconButton(
                                          onPressed: () {
                                            controller.pickedFileCloseButton();
                                          },
                                          icon: const Icon(Icons.close)),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                  const Gap(height: 5),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: AppText(
                            data: "Please Upload PDF Format Only",
                            color: AppColors.grey800,
                            fontSize: 12,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // const Gap(height: 20),
                  // const Gap(height: 20),

                  // const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 20),
                  //   child: Row(
                  //     children: [
                  //       AppText(
                  //         data: "Upload Pdf :",
                  //         fontSize: 16,
                  //         color: AppColors.primary,
                  //         fontWeight: FontWeight.w800,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const Gap(height: 10),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: AppInputWidgetTwo(
                  //     onTap: () {
                  //       // controller.callDateOfBirthSet();
                  //     },
                  //     // controller: controller.dateOfBirthTextEditingController,
                  //     hintText: "",
                  //     readOnly: true,
                  //     fillColor: AppColors.white,
                  //     // titleColor: AppColors.dark200,
                  //     border: OutlineInputBorder(
                  //         borderSide:
                  //             const BorderSide(color: AppColors.primary),
                  //         borderRadius: BorderRadius.circular(
                  //           AppSize.width(value: 10.0),
                  //         )),
                  //     errBorder: const OutlineInputBorder(
                  //         borderSide: BorderSide(color: AppColors.error)),
                  //     suffixIcon: IconButton(
                  //         onPressed: () {
                  //           appLog("Download The Pdf File");
                  //           // controller.callDateOfBirthSet();
                  //         },
                  //         icon: const Icon(
                  //           Icons.file_download_outlined,
                  //           color: AppColors.primary,
                  //         )),
                  //     prefix: const Padding(
                  //       padding: EdgeInsets.all(5),
                  //       child: AppImage(
                  //         path: AssetsIconsPath.pdfImage,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Upload Picture :",
                          fontSize: 16,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ),
                  // const Gap(height: 20),
                  const Gap(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                      onTap: () {
                        controller.clickImagePic();
                      },
                      child: Container(
                        width: Get.width,
                        height: AppSize.width(value: 70.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primary),
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.file_upload_outlined,
                              color: AppColors.primary,
                            ),
                            Gap(width: 10),
                            AppText(
                              data: "Upload Images",
                              fontSize: 18,
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 20),
                  Obx(
                    () => controller.localImagePath.isNotEmpty
                        ? SizedBox(
                            height: 200,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: GridView.builder(
                                scrollDirection: Axis.vertical,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      5, // One column (horizontal scroll)
                                  childAspectRatio:
                                      1.0, // Adjust the aspect ratio as needed
                                ),
                                itemCount: controller.localImagePath.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: FittedBox(
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: FittedBox(
                                                child: AppImage(
                                                  filePath: controller
                                                      .localImagePath[index],
                                                  width:
                                                      AppSize.height(value: 60),
                                                  height:
                                                      AppSize.height(value: 60),
                                                  color: AppColors.primary,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              right: 0,
                                              top: 0,
                                              child: InkWell(
                                                onTap: () {
                                                  controller.localImagePath
                                                      .removeAt(index);
                                                },
                                                child: Container(
                                                  color: AppColors.primary,
                                                  child: const Icon(
                                                    Icons.close,
                                                    size: 18,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ),
                  const Gap(height: 10),
                  const Gap(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                      onTap: () {
                        deliveryNoticeDialog();
                        // Get.toNamed(AppRoutes.welcomePage);
                      },
                      child: Container(
                        width: Get.width,
                        height: AppSize.width(value: 50.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(
                            AppSize.width(value: 8),
                          ),
                        ),
                        child:
                            // controller.isLoading.value
                            //     ? const Center(
                            //         child: CircularProgressIndicator(
                            //           color: Colors.white,
                            //         ),
                            //       )
                            //     :
                            const AppText(
                          data: "Send Delivery",
                          fontSize: 18,
                          color: AppColors.grey50,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),

                  const Gap(height: 20)
                ],
              ),
            ),
          );
        });
  }
}
