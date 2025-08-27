import 'package:boolbi_app/enum_types/app_user_type.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:get/get.dart';

class CustomerHomeScreenController extends GetxController {
  // RxInt selectedIndexTabBar = 0.obs;
  goToNextScreen() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.toNamed(AppRoutes.navigationScreen);
        selectedUser = Usertype.customer;
        // Get.offAllNamed(AppRoutes.navigationScreen);

        // if (AppStorage().getValue(StorageKey.loginValue) == null) {
        //   Get.offAllNamed(AppRoutes.startPage);
        // } else {
        //   if (AppStorage().getValue(StorageKey.setLoginUserRole) == "USER") {
        //     selectedUser = Usertype.user;
        //   } else if (AppStorage().getValue(StorageKey.setLoginUserRole) == "SELLER") {
        //     selectedUser = Usertype.seller;
        //   }
        //   Get.offAllNamed(AppRoutes.navigationScreen);
        // }
      },
    );
  }

  @override
  void onInit() async {
    super.onInit();
    // goToNextScreen();
  }
}
