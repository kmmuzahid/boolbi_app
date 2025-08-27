import 'package:boolbi_app/widgets/log_print/app_log.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/storage/get_storage.dart';
import 'package:boolbi_app/enum_types/app_user_type.dart';

import '../../../../routes/app_routes.dart';
import '../../../../service/repository/auth_repository.dart';

class SignUpScreenController extends GetxController {
  RxBool isLoading = false.obs;

  RxBool isRememberMe = RxBool(false);
  RxBool isRememberMeValidation = RxBool(true);
  RxBool isProvider = RxBool(false);
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  String? argData;
  String userType = "";

  clickCreateAccountButton() async {
    // Check User Type Function
    userCheck();
    // Map Body
    Map<String, dynamic> body = {
      "name": nameTextEditingController.text,
      "email": emailTextEditingController.text,
      "password": passwordTextEditingController.text,
      "role": userType // USER, SELLER
    };
    try {
      if (isRememberMe.value) {
        isRememberMeValidation.value = true;
      } else {
        isRememberMeValidation.value = false;
      }
      // Validation
      if (signUpFormKey.currentState!.validate() && isRememberMe.value) {
        isLoading.value = true;

        var response = await AuthRepository().createAccount(body: body);
        if (response != null) {
          await AppStorage().setToken(response["data"].toString());
          // Go to Otp Screen
          Get.toNamed(AppRoutes.otpVerificationScreen, arguments: {
            "email": emailTextEditingController.text,
            "screen": "signUp"
          });
        }
      }
    } catch (e) {
      appLog(" error from clickCreateAccountButton : $e");
    } finally {
      isLoading.value = false;
    }
  }

  // getArg() {
  //   argData = Get.arguments;
  // }

  userCheck() {
    if (selectedUser == Usertype.customer) {
      userType = "USER";
    } else if (selectedUser == Usertype.provider) {
      userType = "SELLER";
    }
  }

  @override
  void onInit() {
    // Init Selected User also Type is User
    isProvider = false.obs;
    selectedUser = Usertype.customer;
    super.onInit();
  }

  @override
  void onClose() {
    nameTextEditingController.dispose();
    emailTextEditingController.dispose();
    passwordTextEditingController.dispose();
    confirmPasswordTextEditingController.dispose();
    super.onClose();
  }
}
