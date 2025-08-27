import 'package:boolbi_app/enum_types/app_user_type.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  goToNextScreen() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.toNamed(AppRoutes.navigationScreen);
        selectedUser = Usertype.customer;
        Get.offAllNamed(AppRoutes.navigationScreen);

        // if (AppStorage().getValue(StorageKey.onBoardValue) == null) {
        //   Get.offAllNamed(AppRoutes.navigationScreen);
        // } else {
        //   // if (AppStorage().getValue(StorageKey.setLoginUserRole) == "customer") {
        //   //   selectedUser = Usertype.customer;
        //   // } else if (AppStorage().getValue(StorageKey.setLoginUserRole) == "provider") {
        //   //   selectedUser = Usertype.provider;
        //   // }

        //   // Frontend Login Save Check
        //   if (AppStorage().getValue(StorageKey.loginValue) == null) {
        //     Get.offAllNamed(AppRoutes.chooseAuthScreen);
        //   } else if (AppStorage().getValue(StorageKey.loginValue) ==
        //       "customer") {
        //     selectedUser = Usertype.customer;
        //     Get.offAllNamed(AppRoutes.navigationScreen);
        //   } else if (AppStorage().getValue(StorageKey.loginValue) ==
        //       "provider") {
        //     selectedUser = Usertype.provider;
        //     Get.offAllNamed(AppRoutes.navigationScreen);
        //   }
        // }
        // if (AppStorage().getValue(StorageKey.loginValue) == null) {
        //   Get.offAllNamed(AppRoutes.startPage);
        // } else {
        //   if (AppStorage().getValue(StorageKey.setLoginUserRole) == "customer") {
        //     selectedUser = Usertype.customer;
        //   } else if (AppStorage().getValue(StorageKey.setLoginUserRole) == "provider") {
        //     selectedUser = Usertype.provider;
        //   }
        //   Get.offAllNamed(AppRoutes.navigationScreen);
        // }
      },
    );
  }

  @override
  void onInit() async {
    super.onInit();
    goToNextScreen();
  }
}
