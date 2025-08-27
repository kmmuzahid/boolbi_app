import 'package:boolbi_app/screens/change_password_successful_screen/controllers/change_password_successful_screen_controller.dart';
import 'package:boolbi_app/screens/create_account_successful_screen/controllers/create_account_successful_screen_controller.dart';
import 'package:boolbi_app/screens/error_screen/controllers/error_screen_controller.dart';
import 'package:boolbi_app/screens/onboard_screen/controllers/on_board_screen_controller.dart';
import 'package:boolbi_app/screens/splash_screen/controllers/splash_screen_controller.dart';
import 'package:boolbi_app/screens/choose_auth_screen/controllers/choose_auth_screen_controller.dart';
import 'package:boolbi_app/screens/start_page.dart/controllers/start_page_controller.dart';
import 'package:boolbi_app/screens/view_profile_screen/controller/view_profile_screen_controller.dart';
import 'package:get/get.dart';
import '../../screens/notification_screen/controller/notification_screen_controller.dart';

class AppInitialBinding extends BindingsInterface {
  @override
  dependencies() {
    Get.lazyPut(() => SplashScreenController());
    Get.lazyPut(() => ErrorScreenController());
    Get.lazyPut(() => ChooseAuthScreenController());
    Get.lazyPut(() => NotificationScreenController());
    Get.lazyPut(() => ChangePasswordSuccessfulScreenController());
    Get.lazyPut(() => CreateAccountSuccessfulScreenController());
    Get.lazyPut(() => OnBoardScreenController());
    Get.lazyPut(() => StartPageController());
    Get.lazyPut(() => ViewProfileScreenController());
  }
}
