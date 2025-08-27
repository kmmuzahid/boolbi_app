import 'package:boolbi_app/screens/provider_account_verification_edit_screen/controllers/provider_account_verification_edit_screen_controller.dart';
import 'package:boolbi_app/screens/provider_account_verification_screen/controllers/provider_account_verification_screen_controller.dart';
import 'package:boolbi_app/screens/provider_comnpleted_project_details_screen/controllers/provider_comnpleted_project_details_screen_controller.dart';
import 'package:boolbi_app/screens/provider_create_counter_offer_screen/controllers/provider_create_counter_offer_screen_controller.dart';
import 'package:boolbi_app/screens/provider_create_offer_screen/controllers/provider_create_offer_screen_controller.dart';
import 'package:boolbi_app/screens/provider_delivery_request_screen/controllers/provider_delivery_request_screen_controller.dart';
import 'package:boolbi_app/screens/provider_home_screen/controllers/provider_home_screen_controller.dart';
import 'package:boolbi_app/screens/provider_my_offer_details_screen/controllers/provider_my_offer_details_screen_controller.dart';
import 'package:boolbi_app/screens/provider_offer_screen/controllers/provider_offer_screen_controller.dart';
import 'package:boolbi_app/screens/provider_project_order_details_my_offer_details_screen/controllers/provider_project_order_details_my_offer_details_screen_controller.dart';
import 'package:boolbi_app/screens/provider_running_project_order_status_details_screen/controllers/provider_running_project_order_status_details_screen_controller.dart';
import 'package:boolbi_app/screens/provider_running_project_project_progress_screen/controllers/provider_running_project_project_progress_screen_controller.dart';
import 'package:boolbi_app/screens/provider_personal_infomation_screen/controllers/provider_personal_infomation_screen_controller.dart';
import 'package:boolbi_app/screens/provider_post_details_screen/controllers/provider_post_details_screen_controller.dart';
import 'package:boolbi_app/screens/provider_profile_screen/controllers/provider_profile_screen_controller.dart';
import 'package:boolbi_app/screens/provider_project_screen/controllers/provider_project_screen_controller.dart';
import 'package:boolbi_app/screens/provider_service_requests_details_screen/controllers/provider_service_requests_details_screen_controller.dart';
import 'package:boolbi_app/screens/provider_search_screen/controllers/provider_search_screen_controller.dart';
import 'package:boolbi_app/screens/provider_setting_screen/controllers/provider_setting_screen_controller.dart';
import 'package:boolbi_app/screens/provider_update_offer_screen/controllers/provider_update_offer_screen_controller.dart';
import 'package:boolbi_app/screens/provider_view_all_recommended_project_post_screen/controllers/provider_view_all_recommended_project_post_screen_controller.dart';
import 'package:get/get.dart';

class ProviderAppBindings extends BindingsInterface {
  @override
  dependencies() {
    Get.lazyPut(() => ProviderHomeScreenController());
    Get.lazyPut(() => ProviderProfileScreenController());
    Get.lazyPut(() => ProviderPersonalInfomationScreenController());
    Get.lazyPut(() => ProviderSettingScreenController());
    Get.lazyPut(() => ProviderAccountVerificationScreenController());
    Get.lazyPut(() => ProviderAccountVerificationEditScreenController());
    Get.lazyPut(() => ProviderProjectScreenController());
    Get.lazyPut(() => ProviderRunningProjectProjectProgressScreenController());
    Get.lazyPut(() => ProviderDeliveryRequestScreenController());
    Get.lazyPut(() => ProviderOfferScreenController());
    Get.lazyPut(() => ProviderMyOfferDetailsScreenController());
    Get.lazyPut(() => ProviderServiceRequestsDetailsScreenController());
    Get.lazyPut(() => ProviderCreateCounterOfferScreenController());
    Get.lazyPut(() => ProviderViewAllRecommendedProjectPostScreenController());
    Get.lazyPut(() => ProviderSearchScreenController());
    Get.lazyPut(() => ProviderPostDetailsScreenController());
    Get.lazyPut(() => ProviderCreateOfferScreenController());
    Get.lazyPut(() => ProviderUpdateOfferScreenController());
    Get.lazyPut(
        () => ProviderRunningProjectOrderStatusDetailsScreenController());
    Get.lazyPut(
        () => ProviderProjectOrderDetailsMyOfferDetailsScreenController());
    Get.lazyPut(() => ProviderComnpletedProjectDetailsScreenController());
  }
}
