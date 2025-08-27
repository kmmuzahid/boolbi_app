import 'dart:async';
import 'dart:developer';
import 'dart:isolate';
import 'package:boolbi_app/enum_types/app_user_type.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/widgets/app_snack_bar/app_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../const/api_url/api_url.dart';
import '../../../../service/api/api_post_services.dart';
import '../../../../widgets/log_print/app_log.dart';

class OtpVerificationScreenController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isEmailVerification = false.obs;
  GlobalKey<FormState> verificationCodeKey = GlobalKey<FormState>();
  TextEditingController otp1TextEditingController = TextEditingController();
  TextEditingController otp2TextEditingController = TextEditingController();
  TextEditingController otp3TextEditingController = TextEditingController();
  TextEditingController otp4TextEditingController = TextEditingController();
  TextEditingController otp5TextEditingController = TextEditingController();
  TextEditingController otp6TextEditingController = TextEditingController();
  dynamic argData;
  final RxInt _seconds = 0.obs;
  RxInt get seconds => _seconds;
  late Isolate _isolate;

  clickContinueButton(BuildContext context) async {
    try {
      isLoading.value = true; // Start loading

      if (verificationCodeKey.currentState!.validate()) {
        // Merge OTP digits
        int otpMerge = int.parse("${otp1TextEditingController.text}"
            "${otp2TextEditingController.text}"
            "${otp3TextEditingController.text}"
            "${otp4TextEditingController.text}"
            "${otp5TextEditingController.text}"
            "${otp6TextEditingController.text}");

        if (argData["screen"] == "signUp" &&
            selectedUser == Usertype.provider) {
          await sellerSignUpScreenWork(otpMerge);
        } else if (argData["screen"] == "signUp" &&
            selectedUser == Usertype.customer) {
          await userSignUpScreenWork(otpMerge);
        } else if (argData["screen"] == "forgetPassword") {
          await forgetPasswordScreenWork(otpMerge);
        } else if (argData["screen"] == "changePassword") {
          Get.toNamed(AppRoutes.changePasswordScreen);
        }
      }
    } catch (e) {
      appLog("Error: $e");
      AppSnackBar.error("Something went wrong. Please try again.");
    } finally {
      isLoading.value = false; // Stop loading
    }
  }

  forgetPasswordScreenWork(int otpMerge) async {
    var response = await ApiPostServices().apiPostServices(
      url: AppApiUrl.verifyEmailUrl,
      body: {"email": argData["email"], "oneTimeCode": otpMerge},
    );
    if (response["success"] == true) {
      Get.toNamed(AppRoutes.resetPasswordScreen,
          arguments: response["data"].toString());
    }
  }

  sellerSignUpScreenWork(int otpMerge) async {
    var response = await ApiPostServices().apiPostServices(
      url: AppApiUrl.verifyEmailUrl,
      body: {"email": argData["email"], "oneTimeCode": otpMerge},
    );
    if (response["success"] == true) {
      // AppSnackBar.success("your account is ready");
      // Get.toNamed(AppRoutes.sellerInitialInformationScreen);
    }
  }

  userSignUpScreenWork(int otpMerge) async {
    var response = await ApiPostServices().apiPostServices(
      url: AppApiUrl.verifyEmailUrl,
      body: {"email": argData["email"], "oneTimeCode": otpMerge},
    );

    if (response["success"] == true) {
      // AppSnackBar.success("your account is ready");
      // Get.offAllNamed(AppRoutes.userChooseYourStyleScreen);
    }
  }

  Future<void> clickResendOTP() async {
    Map<String, dynamic> body = {
      "email": argData["email"],
    };

    var response = await ApiPostServices()
        .apiPostServices(url: AppApiUrl.resendOTPUrl, body: body);
    if (response != null) {
      AppSnackBar.success("OTP Resend Successful");
    }
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;

    if (minutes > 0) {
      return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
    } else {
      return '$remainingSeconds';
    }
  }

  Future<void> startTimer() async {
    try {
      final receivePort = ReceivePort();
      _isolate = await Isolate.spawn(_isolateEntryPoint, receivePort.sendPort);
      receivePort.listen((data) {
        _seconds.value = data as int;
        if (_seconds.value <= 0) {
          stopTimer();
        }
      });
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> reCallStatTimer() async {
    if (seconds.value == 0) {
      await startTimer();
      // Call to Send OTP
      await clickResendOTP();
    }
  }

  void stopTimer() {
    try {
      _isolate.kill(priority: Isolate.immediate);
      _seconds.value = 0;
    } catch (e) {
      log(e.toString());
    }
  }

  static void _isolateEntryPoint(SendPort sendPort) {
    int seconds = 180;

    void timerCallback(Timer timer) {
      seconds--;
      sendPort.send(seconds);
      if (seconds <= 0) {
        timer.cancel();
      }
    }

    Timer.periodic(const Duration(seconds: 1), timerCallback);
  }

  @override
  void onInit() {
    super.onInit();
    argData = Get.arguments;
    startTimer();
  }

  @override
  void onClose() {
    super.onClose();
    stopTimer();
  }
}
