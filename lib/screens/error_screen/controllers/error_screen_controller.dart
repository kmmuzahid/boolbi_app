import 'dart:developer';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/service/connectivity_service/connectivity_service.dart';

class ErrorScreenController extends GetxController {
  RxString errorMessage = "".obs;
  RxBool isInternetProblem = true.obs;
  final ConnectivityService connectivityService =
      Get.putOrFind<ConnectivityService>(
    () => ConnectivityService(),
  );

  initialDataCall() {
    try {
      if (connectivityService.connectionStatus
          .contains(ConnectivityResult.none)) {
        errorMessage.value = "No Internet Connection";
        isInternetProblem.value = true;
      } else {
        errorMessage.value = "Error Form Occurs";
        isInternetProblem.value = false;
      }
    } catch (e) {
      log("error form error screen : $e");
    }
  }

  @override
  void onInit() {
    initialDataCall();
    super.onInit();
  }
}
