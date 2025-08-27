import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/api_url/api_url.dart';
import 'package:boolbi_app/const/storage/get_storage.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/service/api/api_delete_services.dart';
import 'package:boolbi_app/widgets/log_print/app_log.dart';

import '../../../widgets/guest_user_restriction_page.dart';

class UserDeleteAccountScreenController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController passwordTextEditingController = TextEditingController();
  RxBool isLoading = false.obs;

  clickDeleteAccountButton() async {
    Map<String, dynamic> body = {
      "password": passwordTextEditingController.text
    };
    // appLog("✅✅✅ ${body}");
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      try {
        // Api Call
        var data = await ApiDeleteServices().apiDeleteServices(
          url: AppApiUrl.deleteAccountUrl,
          body: body,
        );
        if (data != null) {
          Get.toNamed(AppRoutes.welcomePage);
          await Future.wait([
            AppStorage().storageAllClear(),
          ]);
        }
      } catch (e) {
        appLog("error form clickDeleteAccountButton click button $e");
      } finally {
        isLoading.value = false;
      }
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
