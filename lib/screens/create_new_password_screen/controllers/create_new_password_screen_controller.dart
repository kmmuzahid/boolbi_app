import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateNewPasswordScreenController extends GetxController {
  // TextEditingController oldPasswordTextEditingController =
  //     TextEditingController();
  TextEditingController newPasswordTextEditingController =
      TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();
  GlobalKey<FormState> changePasswordKey = GlobalKey<FormState>();

  clickChangePasswordButton() async {
    // try {
    if (changePasswordKey.currentState!.validate()) {
      Get.back();
    }
    // } catch (e) {
    //   log("error form click change password button : $e");
    // }
  }

  @override
  void onClose() {
    // oldPasswordTextEditingController.dispose();
    newPasswordTextEditingController.dispose();
    confirmPasswordTextEditingController.dispose();
    super.onClose();
  }
}
