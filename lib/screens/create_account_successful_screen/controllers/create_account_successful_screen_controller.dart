import 'dart:developer';

import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/widgets/log_print/app_log.dart';
import 'package:get/get.dart';

import '../../navigation_screen/controllers/navigation_screen_controller.dart';

class CreateAccountSuccessfulScreenController extends GetxController {
  trackOrderButton() {
    // Get.toNamed(AppRoutes.userOrderStatusScreen);
  }

  backToHomeButton() {
    Get.offAllNamed(AppRoutes.navigationScreen);
    _gotoHomeScreen();
  }

  dynamic argData;
  @override
  void onInit() {
    if (Get.arguments != null) {
      appLog("${Get.arguments}");
      argData = Get.arguments;
    }

    super.onInit();
  }
}

_gotoHomeScreen() {
  try {
    Get.putOrFind<NavigationScreenController>(
        () => NavigationScreenController()).userChangeScreenNav(0, true);
  } catch (e) {
    log("Error $e");
  }
}
