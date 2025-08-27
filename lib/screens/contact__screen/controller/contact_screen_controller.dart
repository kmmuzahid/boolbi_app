import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/api_url/api_url.dart';
import 'package:boolbi_app/service/api/api_post_services.dart';
import 'package:boolbi_app/widgets/app_snack_bar/app_snack_bar.dart';
import 'package:boolbi_app/widgets/log_print/app_log.dart';

import '../../../widgets/guest_user_restriction_page.dart';

class ContactScreenController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController message = TextEditingController();
  RxBool isLoading = false.obs;
  clickToSendButton() async {
    try {
      if (formKey.currentState!.validate()) {
        isLoading.value = true;
        Map<String, dynamic> body = {
          "name": name.text,
          "email": email.text,
          "message": message.text,
        };
        appLog(body);
        var response = await ApiPostServices().apiPostServices(url: AppApiUrl.sellerContactUrl, body: body);
        appLog(response);
        if (response["success"] == true) {
          AppSnackBar.success("Message Send Successfully");
          Get.back();
        }
      }
    } catch (e) {
      appLog("Click to Send Contact Message $e");
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => GuestModeRestrictionWidget(barrierDismissible: false, isBack: true),
    );
    super.onInit();
  }
}
