import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/widgets/log_print/app_log.dart';

import '../../../const/api_url/api_url.dart';
import '../../../service/api/api_post_services.dart';
import '../../../widgets/app_snack_bar/app_snack_bar.dart';
import '../../../widgets/guest_user_restriction_page.dart';

class ChangePasswordScreenController extends GetxController {
  TextEditingController oldPasswordTextEditingController = TextEditingController();
  TextEditingController newPasswordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController = TextEditingController();
  GlobalKey<FormState> changePasswordKey = GlobalKey<FormState>();
  RxBool isLoading = false.obs;

  clickChangePasswordButton() async {
    try {
      if (changePasswordKey.currentState!.validate()) {
        isLoading.value = true;
        // Api Call
        var data = await ApiPostServices().apiPostServices(
          url: AppApiUrl.changePasswordUrl,
          body: {
            "currentPassword": oldPasswordTextEditingController.text,
            "newPassword": newPasswordTextEditingController.text,
            "confirmPassword": confirmPasswordTextEditingController.text
          },
        );
        if (data != null) {
          AppSnackBar.success("Password changed successfully");
          Get.back(times: 1);
        }
      }
    } catch (e) {
      appLog("error form click change password button : $e");
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    // for guest account
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => GuestModeRestrictionWidget(barrierDismissible: false, isBack: true),
    );
    super.onInit();
  }

  @override
  void onClose() {
    // oldPasswordTextEditingController.dispose();
    newPasswordTextEditingController.dispose();
    confirmPasswordTextEditingController.dispose();
    super.onClose();
  }
}
