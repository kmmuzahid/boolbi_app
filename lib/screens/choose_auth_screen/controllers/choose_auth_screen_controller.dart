import 'package:get/get.dart';
// import 'package:boolbi_app/const/storage/get_storage.dart';
import 'package:boolbi_app/routes/app_routes.dart';

class ChooseAuthScreenController extends GetxController {
//   clickNext() {
//     //check Get Storage value
//     // Store Get Storage Value
//     // AppStorage().setOnBoardValue(StorageKey.onBoardValue);
//     Get.offAllNamed(AppRoutes.signIn);
//   }
  login() {
    Get.toNamed(AppRoutes.signIn);
  }

  createAccount() {
    Get.toNamed(AppRoutes.signUp);
  }
}
