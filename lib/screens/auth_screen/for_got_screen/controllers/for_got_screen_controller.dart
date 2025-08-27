import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/widgets/log_print/app_log.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../const/api_url/api_url.dart';
import '../../../../service/api/api_post_services.dart';

class ForGotScreenController extends GetxController {
  GlobalKey<FormState> forGotScreenKey = GlobalKey<FormState>();
  TextEditingController emailTextEditingController = TextEditingController();
  RxBool isLoading = false.obs;

  Future<void> clickSendButton() async {
    Map<String, dynamic> body = {
      "email": emailTextEditingController.text,
    };
    try {
      if (forGotScreenKey.currentState!.validate()) {
        isLoading.value = true;
        // Api Call
        var data = await ApiPostServices().apiPostServices(url: AppApiUrl.forgotPasswordUrl, body: body);
        if (data != null) {
          Get.toNamed(AppRoutes.otpVerificationScreen, arguments: {
            "email": emailTextEditingController.text,
            "screen": "forgetPassword"
          });
        }
      }
    } catch (e) {
      appLog("error form forgot Password click button $e");
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    super.onClose();
    emailTextEditingController.dispose();
  }
}
