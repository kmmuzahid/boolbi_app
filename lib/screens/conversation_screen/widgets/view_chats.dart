import 'package:flutter/material.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/conversation_screen/controllers/conversation_screen_controller.dart';
import 'package:boolbi_app/screens/conversation_screen/model/message_get_model.dart';
import 'package:boolbi_app/screens/conversation_screen/widgets/time_format.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:url_launcher/url_launcher.dart';

Widget showMessage(MessageGetModel item, int index, ConversationScreenController controller,) {
  if (item.messageType == "text") {
    // if Text value is no null then Show Text
    return Column(
      crossAxisAlignment: item.receiverId?.sId == controller.argData.sId ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: AppSize.height(value: 10)),
            constraints: BoxConstraints(
              maxWidth: AppSize.size.width * 0.7,
            ),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: AppColors.primaryBackgroud,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20),
                  bottomLeft: item.receiverId?.sId == controller.argData.sId ? const Radius.circular(20) : const Radius.circular(0),
                  bottomRight: item.receiverId?.sId == controller.argData.sId ? const Radius.circular(0) : const Radius.circular(20),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                isUrl(item.message ?? "")
                    ? Material(
                        color: Colors.transparent, // Keeps the background transparent
                        child: InkWell(
                          onTap: () async {
                            await launchUrl(Uri.parse(item.message ?? ""));
                          },
                          splashColor: Colors.blue.withOpacity(0.3), // Splash effect color
                          highlightColor: Colors.blue.withOpacity(0.2), // Highlight effect when tapped
                          child: AppText(
                            data: item.message ?? "",
                            fontSize: 16,
                            textAlign: TextAlign.justify,
                            height: 1.5,
                            color: Colors.blue,
                            decorationColor: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    : AppText(
                        data: item.message ?? "",
                        color: AppColors.primary,
                        fontSize: 16,
                        textAlign: TextAlign.justify,
                        height: 1.5,
                      ),
              ],
            )),
        AppText(
          data: formatTimeChat(item.createdAt ?? ""),
          color: AppColors.primary,
          fontSize: 12,
        ),
      ],
    );
  } else if (item.messageType == "image") {
    // if Image value is no null then Show Image
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: AppSize.height(value: 10),
      ),
      constraints: BoxConstraints(
        maxWidth: AppSize.size.width * 0.7,
      ),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
            bottomLeft: item.receiverId?.sId == controller.argData.sId ? const Radius.circular(20) : const Radius.circular(0),
            bottomRight: item.receiverId?.sId == controller.argData.sId ? const Radius.circular(0) : const Radius.circular(20),
          )),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            child: AppImage(
              isFullScreen: true,
              url: item.image,
              height: 250,
              fit: BoxFit.fitWidth,
            ),
          ),
          const Gap(height: 20),
          Row(
            mainAxisAlignment: item.receiverId?.sId == controller.argData.sId ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              AppText(
                data: formatTimeChat(item.createdAt ?? ""),
                color: AppColors.primary,
                fontSize: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }

  return const SizedBox();
}

bool isUrl(String text) {
  final RegExp urlRegExp = RegExp(
    r'^(https?:\/\/)?([\w\-]+(\.[\w\-]+)+)([\w.,@?^=%&:/~+#-]*[\w@?^=%&/~+#-])?$',
    caseSensitive: false,
  );
  return urlRegExp.hasMatch(text);
}
