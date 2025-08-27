import 'package:boolbi_app/const/images/app_asset_images.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:boolbi_app/const/images/app_asset_icons.dart';
import 'package:boolbi_app/screens/conversation_screen/controllers/conversation_screen_controller.dart';
import 'package:boolbi_app/screens/conversation_screen/widgets/view_chats.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/app_image/app_image_circular.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ConversationScreenController(),
        builder: (controller) {
          return Observer(
            builder: (context) {
              return Scaffold(
                backgroundColor: AppColors.white,
                extendBody: true,
                appBar: AppBar(
                  
                  leading: BackButton(
                    color: Colors.white,
                    onPressed: () {
                      Get.back();
                      // var controller = Get.putOrFind(
                      //     () => ProfessionalClientsScreenController());
                      // controller.getChatListRefresh();
                    },
                  ),
                  backgroundColor: AppColors.primary,
                  // forceMaterialTransparency: true,
                  title: Row(
                    children: [
                      AppImageCircular(
                        width: AppSize.width(value: 40),
                        height: AppSize.width(value: 40),
                        path: AssetsImagesPath.demoImage,
                        fit: BoxFit.fitHeight,
                        // url: controller.argData.profile ?? "",
                      ),
                      const Gap(width: 10),
                 const     Expanded(
                          child: AppText(
                            data: "Ajay Dev",
                              // data: controller.argData.name ?? "",
                              color: AppColors.white,
                              fontWeight: FontWeight.w900)),
                    ],
                  ),
                ),
                body: Obx(
                  () => Stack(
                    children: [
                      // Background Image
                      // AppImage(
                      //   width: AppSize.size.width,
                      //   height: AppSize.size.height,
                      //   path: AssetsImagesPath.splashBackground,
                      // ),
                      // Chat Container
                      controller.isLoading.value
                          ? const Center(
                              child: CircularProgressIndicator(
                                color: Colors.black,
                              ),
                            )
                          : Positioned.fill(
                              child: GestureDetector(
                                onTap: () {
                                  controller.outSideClick();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, bottom: 80),
                                  child: ListView.builder(
                                    reverse: true,
                                    controller: controller.scrollController,
                                    itemCount:
                                        controller.listOfMessageData.length +
                                            (controller.hasMore.value ? 1 : 0),
                                    itemBuilder: (context, index) {
                                      // Show loading indicator for pagination if it's the last index and more data is being fetched
                                      if (index ==
                                          controller.listOfMessageData.length) {
                                        if (controller.hasMore.value &&
                                            controller.isLoadingMore.value) {
                                          return const Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: CircularProgressIndicator(
                                                color: Colors.black,
                                              ),
                                            ),
                                          );
                                        } else {
                                          return const SizedBox(); // Placeholder when no more data to load
                                        }
                                      }

                                      // Render message item
                                      var item =
                                          controller.listOfMessageData[index];
                                      return Align(
                                        alignment: item.receiverId?.sId ==
                                                controller.argData.sId
                                            ? Alignment.centerRight
                                            : Alignment.centerLeft,
                                        child: showMessage(
                                            item, index, controller),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerFloat,
                floatingActionButtonAnimator:
                    FloatingActionButtonAnimator.noAnimation,
                floatingActionButton: AnimatedContainer(
                  duration: const Duration(seconds: 200),
                  height: AppSize.size.height * 0.057,
                  width: AppSize.size.width,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    right: AppSize.width(value: 10.0),
                    left: AppSize.width(value: 10.0),
                  ),
                  child: controller.isOnTextFeild.value
                      ? Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  controller.isOnTextFeild.value = false;
                                  controller.update();
                                },
                                icon: const Icon(
                                  Icons.keyboard_arrow_right,
                                  size: 30,
                                )),
                            Expanded(
                              child: AppInputWidgetTwo(
                                hintText: "message",
                                cursorColor: AppColors.primary,
                                focusNode: controller.focuse.value == true
                                    ? controller.focusNode
                                    : null,
                                filled: true,
                                fillColor: AppColors.white,
                                textInputAction: TextInputAction.newline,
                                controller: controller.chatController,
                                onTap: () {},
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      AppSize.width(value: 50)),
                                  borderSide: const BorderSide(
                                      color: AppColors.primary),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: AppSize.width(value: 20),
                                ),
                              ),
                            ),
                            const Gap(width: 10),
                            Obx(
                              () => InkWell(
                                onTap: () {
                                  if (controller.isSendingMessage.value ==
                                      false) {
                                    controller.sendMessage();
                                  }
                                },
                                child: controller.isSendingMessage.value
                                    ? const Center(
                                        child: CircularProgressIndicator(
                                            color: Colors.black),
                                      )
                                    : const AppImage(
                                        path: AssetsIconsPath.messageSendButton,
                                      ),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Looks
                            controller.isLoadingUploadImage.value
                                ? const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircularProgressIndicator(
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                            if (controller.isLoadingUploadImage.value == false)
                              InkWell(
                                onTap: () {
                                  controller.sendImage(ImageSource.gallery,
                                      DateTime.now().toString());
                                },
                                child: const AppImage(
                                  path: AssetsIconsPath.gallaryIconButton,
                                ),
                              ),
                            // if (controller.isLoadingUploadImage.value == false)
                            //   InkWell(
                            //     onTap: () {
                            //       controller.sendImage(ImageSource.camera,
                            //           DateTime.now().toString());
                            //     },
                            //     child: const AppImage(
                            //       path: AssetsIconsPath.google,
                            //     ),
                            //   ),
                            const Gap(width: 5),
                            if (controller.chatController.text != "")
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: AppInputWidgetTwo(
                                    hintText: "message",
                                    cursorColor: AppColors.primary,
                                    onTap: () {
                                      controller.isOnTextFeild.value = true;
                                      controller.focuse.value = true;
                                      controller.update();
                                      controller.focuse.value == true
                                          ? controller.focusNode.requestFocus()
                                          : null;
                                    },
                                    readOnly: true,
                                    filled: true,
                                    fillColor: AppColors.white,
                                    textInputAction: TextInputAction.newline,
                                    controller: controller.chatController,
                                    onFieldSubmitted: (p0) {},
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          AppSize.width(value: 50)),
                                      borderSide: BorderSide(
                                          color: AppColors.primaryWithOpacityW6),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: AppSize.width(value: 20),
                                    ),
                                  ),
                                ),
                              ),
                            const Gap(width: 5),
                            if (controller.chatController.text == "")
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: AppInputWidgetTwo(
                                    hintText: "Type a message",
                                    readOnly: true,
                                    cursorColor: AppColors.primary,
                                    onTap: () {
                                      controller.isOnTextFeild.value = true;
                                      controller.focuse.value = true;
                                      controller.update();

                                      controller.focuse.value == true
                                          ? {
                                              controller.focusNode
                                                  .requestFocus(),
                                            }
                                          : null;
                                    },
                                    filled: true,
                                    fillColor: AppColors.white,
                                    textInputAction: TextInputAction.newline,
                                    controller: controller.chatController,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          AppSize.width(value: 50)),
                                      borderSide: BorderSide(
                                          color: AppColors.primaryWithOpacityW6),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: AppSize.width(value: 20),
                                    ),
                                  ),
                                ),
                              ),
                            const Gap(width: 5),

                            Obx(
                              () => InkWell(
                                onTap: () {
                                  if (controller.isSendingMessage.value ==
                                      false) {
                                    controller.sendMessage();
                                  }
                                },
                                child: controller.isSendingMessage.value
                                    ? const Center(
                                        child: CircularProgressIndicator(
                                            color: Colors.black),
                                      )
                                    : const AppImage(
                                        path: AssetsIconsPath.messageSendButton,
                                      ),
                              ),
                            ),
                          ],
                        ),
                ),

                // bottomNavigationBar: Padding(
                //   padding:  EdgeInsets.only(
                //     bottom: MediaQuery.of(context).viewInsets.bottom
                //   ),
                //   child: Column(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [

                //     SizedBox(
                //       width: AppSize.size.width,
                //       height: AppSize.width(value: 50),
                //       child: AppInputWidget(

                //       ),
                //     )
                //   ],),
                // ),
              );
            },
          );
        });
  }
}
