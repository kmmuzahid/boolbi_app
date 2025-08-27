import 'package:boolbi_app/screens/conversation_screen/controllers/conversation_screen_controller.dart';
import 'package:boolbi_app/screens/customer_contact_support_screen/controllers/customer_contact_support_screen_controller.dart';
import 'package:boolbi_app/screens/language_screen/controllers/language_screen_controller.dart';
import 'package:boolbi_app/screens/navigation_screen/controllers/navigation_screen_controller.dart';
import 'package:get/get.dart';

class NavigationAppBindings extends BindingsInterface {
  @override
  dependencies() {
    Get.lazyPut(() => NavigationScreenController());
     Get.lazyPut(() => LanguageScreenController());
     Get.lazyPut(() => CustomerContactSupportScreenController());
         Get.lazyPut(() => ConversationScreenController());
    // Get.lazyPut(() => WelcomePageController());
    // Get.lazyPut(() => CreateNewPasswordScreenController());
    // Get.lazyPut(() => ChangePasswordScreenController());
    // Get.lazyPut(() => ReportProblemScreenController());
    // Get.lazyPut(() => ContactScreenController());
    // Get.lazyPut(() => HelpScreenController());
    // Get.lazyPut(() => NotificationScreenController());

    // Get.lazyPut(() => UserProfileScreenController());
  }
}
