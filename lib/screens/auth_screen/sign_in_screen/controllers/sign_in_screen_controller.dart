import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/enum_types/guest_user_type.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/widgets/app_snack_bar/app_snack_bar.dart';
import 'package:boolbi_app/widgets/log_print/app_log.dart';
import 'package:boolbi_app/widgets/log_print/error_log.dart';
import '../../../../const/api_url/api_url.dart';
import '../../../../const/storage/get_storage.dart';
import '../../../../enum_types/app_user_type.dart';
import '../../../../service/api/api_post_services.dart';

class SignInScreenController extends GetxController {
  RxBool isRememberMe = RxBool(false);
  RxBool isLoading = RxBool(false);
  GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  clickSignIButton() async {
    if (signInFormKey.currentState!.validate()) {
      isLoading.value = true;
      Map<String, dynamic> body = {
        "email": emailTextEditingController.text.toLowerCase().trim(),
        "password": passwordTextEditingController.text.trim(),
      };

      try {
        var response = await ApiPostServices().apiPostServices(
          url: AppApiUrl.signInUrl,
          body: body,
        );

        if (response != null) {
          if (response["data"] != null) {
            roleSelect(response["data"]["role"]);
            getStorageValueSet(response);
            Get.offAllNamed(AppRoutes.navigationScreen);
          }
        } else {
          AppSnackBar.error("Something went wrong");
        }
      } catch (e) {
        appLog("Sign In Exception: $e");
      } finally {
        isLoading.value = false; // Reset loading state
      }
    }
  }

  roleSelect(String value) {
    if (value.toLowerCase() == "provider") {
      selectedUser = Usertype.provider;
    } else if (value.toLowerCase() == "customer") {
      isGuest = IsUserType.user;
      selectedUser = Usertype.customer;
    }
  }

  Future<void> getStorageValueSet(data) async {
    try {
      await Future.wait([
        AppStorage().setToken(data["data"]["accessToken"]),
        AppStorage().setRefreshToken(data["data"]["refreshToken"]),
        AppStorage().setLoginValue(StorageKey.loginValue),
        AppStorage().setLoginUserRole(data["data"]["role"]),
      ]);
      appLog("✅✅${AppStorage().getToken()}");
      appLog("✅✅${AppStorage().getRefreshToken()}");
    } catch (e) {
      errorLog("getStorageValueSet ", e);
    }
  }

  @override
  void onInit() {
    emailTextEditingController.text = "";
    passwordTextEditingController.text = "";
    super.onInit();
  }

  @override
  void onClose() {
    emailTextEditingController.dispose();
    passwordTextEditingController.dispose();
    super.onClose();
  }
}
