import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/widgets/app_snack_bar/app_snack_bar.dart';
import 'package:boolbi_app/widgets/log_print/app_log.dart';
import '../../../../const/api_url/api_url.dart';
import '../../../../service/api/api_post_services.dart';

class ResetPasswordScreenController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController reEntryPasswordTextEditingController = TextEditingController();
  GlobalKey<FormState> resetPasswordKey = GlobalKey<FormState>();
  dynamic argData;

  clickResetButton() async {
    Map<String, dynamic> body = {
      "authorization": argData,
      "newPassword": passwordTextEditingController.text,
      "confirmPassword": reEntryPasswordTextEditingController.text,
    };
    try {
      if (resetPasswordKey.currentState!.validate()) {
        isLoading.value = true;
        // Api Call
        var data = await ApiPostServices().apiPostServices(token: argData, url: AppApiUrl.resetPasswordUrl, body: body);
        if (data != null) {
          AppSnackBar.success("Password Reset Successful");
          Get.offAllNamed(AppRoutes.signIn);
        }
      }
    } catch (e) {
      appLog("error form Reset Password click button $e");
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    argData = Get.arguments;
    super.onInit();
  }

  @override
  void onClose() {
    passwordTextEditingController.dispose();
    reEntryPasswordTextEditingController.dispose();
    super.onClose();
  }
}
