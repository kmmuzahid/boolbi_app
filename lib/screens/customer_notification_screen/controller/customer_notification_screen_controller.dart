import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../widgets/guest_user_restriction_page.dart';

class CustomerNotificationScreenController extends GetxController {
  @override
  void onInit() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => GuestModeRestrictionWidget(barrierDismissible: false, isBack: true),
    );
    super.onInit();
  }
}
