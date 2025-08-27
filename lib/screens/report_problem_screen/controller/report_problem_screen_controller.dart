import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/api_url/api_url.dart';
import '../../../service/api/api_post_services.dart';
import '../../../widgets/app_snack_bar/app_snack_bar.dart';
import '../../../widgets/guest_user_restriction_page.dart';
import '../../../widgets/log_print/app_log.dart';

class ReportProblemScreenController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController message = TextEditingController();
  RxBool isLoading = false.obs;
  clickToSendReposrtButton() async {
    try {
      if (formKey.currentState!.validate()) {
        isLoading.value = true;
        Map<String, dynamic> body = {
          "text": message.text,
        };
        appLog(body);
        var response = await ApiPostServices().apiPostServices(url: AppApiUrl.sellerReportUrl, body: body);
        appLog(response);
        if (response["success"] == true) {
          AppSnackBar.success("Report Send Successfully");
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
