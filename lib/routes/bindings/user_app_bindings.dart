import 'package:boolbi_app/screens/customer_category_view_screen/controllers/customer_category_view_screen_controller.dart';
import 'package:boolbi_app/screens/customer_completed_project_delivery_request_screen/controllers/customer_completed_project_delivery_request_screen_controller.dart';
import 'package:boolbi_app/screens/customer_create_counter_offer_screen/controllers/customer_create_counter_offer_screen_controller.dart';
import 'package:boolbi_app/screens/customer_create_job_order_screen/controllers/customer_create_job_order_screen_controller.dart';
import 'package:boolbi_app/screens/customer_create_project_post_screen/controllers/customer_create_project_post_screen_controller.dart';
import 'package:boolbi_app/screens/customer_edit_project_post_screen/controllers/customer_edit_project_post_screen_controller.dart';
import 'package:boolbi_app/screens/customer_my_offer_deetails_project_post_details_screen/controllers/customer_my_offer_deetails_project_post_details_screen_controller.dart';
import 'package:boolbi_app/screens/customer_my_service_request_details_again_details_screen/controllers/customer_my_service_request_details_again_details_screen_controller.dart';
import 'package:boolbi_app/screens/customer_offer_request_details_again_details_screen/controllers/customer_offer_request_details_again_details_screen_controller.dart';
import 'package:boolbi_app/screens/customer_order_progess_order_details_screen/controllers/customer_order_progess_order_details_screen_controller.dart';
import 'package:boolbi_app/screens/customer_post_details_create_counter_offer_screen/controllers/customer_post_details_create_counter_offer_screen_controller.dart';
import 'package:boolbi_app/screens/customer_post_offer_request_details_details_screen/controllers/customer_post_offer_request_details_details_screen_controller.dart';
import 'package:boolbi_app/screens/customer_post_offer_request_details_screen/controllers/customer_post_offer_request_details_screen_controller.dart';
import 'package:boolbi_app/screens/customer_post_offer_request_list_screen/controllers/customer_post_offer_request_list_screen_controller.dart';
import 'package:boolbi_app/screens/customer_runing_project_delivery_request_screen/controllers/customer_runing_project_delivery_request_screen_controller.dart';
import 'package:boolbi_app/screens/customer_favorite_view_all_screen/controllers/customer_favorite_view_all_screen_controller.dart';
import 'package:boolbi_app/screens/customer_offer_request_details_screen/controllers/customer_offer_request_details_screen_controller.dart';
import 'package:boolbi_app/screens/customer_offer_request_list_screen/controllers/customer_offer_request_list_screen_controller.dart';
import 'package:boolbi_app/screens/customer_runing_project_order_progress_screen/controllers/customer_runing_project_order_progress_screen_controller.dart';
import 'package:boolbi_app/screens/customer_personal_infomation_screen/controllers/customer_personal_infomation_screen_controller.dart';
import 'package:boolbi_app/screens/customer_post_details_screen/controllers/customer_post_details_screen_controller.dart';
import 'package:boolbi_app/screens/customer_post_job_my_service_request_details_screen/controllers/customer_post_job_my_service_request_details_screen_controller.dart';
import 'package:boolbi_app/screens/customer_post_job_my_project_post_details_screen/controllers/customer_post_job_my_project_post_details_screen_controller.dart';
import 'package:boolbi_app/screens/customer_post_job_screen/controllers/customer_post_job_screen_controller.dart';
import 'package:boolbi_app/screens/customer_profile_screen/controllers/customer_profile_screen_controller.dart';
import 'package:boolbi_app/screens/customer_project_screen/controllers/customer_project_screen_controller.dart';
import 'package:boolbi_app/screens/customer_search_screen/controllers/customer_search_screen_controller.dart';
import 'package:boolbi_app/screens/customer_setting_screen/controllers/customer_setting_screen_controller.dart';
import 'package:boolbi_app/screens/customer_view_all_category_screen/controllers/customer_view_all_category_screen_controller.dart';
import 'package:boolbi_app/screens/customer_view_all_recommended_provider_screen/controllers/customer_view_all_recommended_provider_screen_controller.dart';
import 'package:boolbi_app/screens/customer_home_screen/controllers/customer_home_screen_controller.dart';
import 'package:boolbi_app/screens/customer_view_delivery_request_list_screen/controllers/customer_view_delivery_request_list_screen_controller.dart';
import 'package:boolbi_app/screens/customer_view_profile_screen/controller/customer_view_profile_screen_controller.dart';
import 'package:get/get.dart';

class UserAppBindings extends BindingsInterface {
  @override
  dependencies() {
    Get.lazyPut(() => CustomerHomeScreenController());
    Get.lazyPut(() => CustomerViewAllCategoryScreenController());
    Get.lazyPut(() => CustomerViewAllRecommendedProviderScreenController());
    Get.lazyPut(() => CustomerSearchScreenController());
    Get.lazyPut(() => CustomerPostDetailsScreenController());
    Get.lazyPut(() => CustomerCreateJobOrderScreenController());
    Get.lazyPut(() => CustomerCategoryViewScreenController());
    Get.lazyPut(() => CustomerProfileScreenController());
    Get.lazyPut(() => CustomerPersonalInfomationScreenController());
    Get.lazyPut(() => CustomerSettingScreenController());
    Get.lazyPut(() => CustomerPostJobScreenController());
    Get.lazyPut(() => CustomerProjectScreenController());
    Get.lazyPut(() => CustomerOfferRequestListScreenController());
    Get.lazyPut(() => CustomerOfferRequestDetailsScreenController());
    Get.lazyPut(() => CustomerFavoriteViewAllScreenController());
    Get.lazyPut(() => CustomerRuningProjectOrderProgressScreenController());
    // Get.lazyPut(() => CustomerCompletedProjectOrderProgressScreenController());
    Get.lazyPut(() => CustomerRuningProjectDeliveryRequestScreenController());
    Get.lazyPut(
        () => CustomerCompletedProjectDeliveryRequestScreenController());
    Get.lazyPut(() => CustomerPostJobMyServiceRequestDetailsScreenController());
    Get.lazyPut(() => CustomerPostJobMyProjectPostDetailsScreenController());
    Get.lazyPut(
        () => CustomerMyOfferDeetailsProjectPostDetailsScreenController());
    Get.lazyPut(() => CustomerCreateProjectPostScreenController());
    Get.lazyPut(() => CustomerEditProjectPostScreenController());
    Get.lazyPut(() => CustomerViewDeliveryRequestListScreenController());
    Get.lazyPut(
        () => CustomerOfferRequestDetailsAgainDetailsScreenController());
    Get.lazyPut(() => CustomerCreateCounterOfferScreenController());
    Get.lazyPut(
        () => CustomerMyServiceRequestDetailsAgainDetailsScreenController());
    Get.lazyPut(() => CustomerPostOfferRequestListScreenController());
    Get.lazyPut(() => CustomerPostOfferRequestDetailsScreenController());
    Get.lazyPut(() => CustomerPostOfferRequestDetailsDetailsScreenController());
    Get.lazyPut(() => CustomerPostDetailsCreateCounterOfferScreenController());
    Get.lazyPut(() => CustomerOrderProgessOrderDetailsScreenController());
    Get.lazyPut(() => CustomerViewProfileScreenController());

    // Get.lazyPut(() => UserShopScreenController());
    // Get.lazyPut(() => UserNotificationScreenController());
    // Get.lazyPut(() => UserProfileScreenController());
    // Get.lazyPut(() => UserProfileDetailsScreenController());
    // Get.lazyPut(() => UserEditProfileScreenController());
    // Get.lazyPut(() => UserOrderHistoryScreenController());
    // Get.lazyPut(() => UserDeleteAccountScreenController());
    // Get.lazyPut(() => UserSavedItemScreenController());
    // Get.lazyPut(() => UserProductDetailsDetailsScreenController());
    // Get.lazyPut(() => UserCheckOutScreenController());
    // Get.lazyPut(() => UserPaymentSuccessfulScreenController());
    // Get.lazyPut(() => UserOrderStatusScreenController());
    // Get.lazyPut(() => UserOrderStatusDetailsScreenController());
    // Get.lazyPut(() => UserFaqScreenController());
    // Get.lazyPut(() => UserTermsAndConditionScreenController());
    // Get.lazyPut(() => UserSearchScreenController());
    // Get.lazyPut(() => UserAddReviewScreenController());
    // Get.lazyPut(() => UserHomepageCategoriesViewScreenController());
    // Get.lazyPut(() => UserExchangeScreenController());
    // Get.lazyPut(() => UserTrendingScreenController());
    // Get.lazyPut(() => UserChooseYourStyleScreenController());
    // Get.lazyPut(() => UserClosetScreenController());

    // // Get.lazyPut(() => UserOfferViewAllScreenController());
  }
}
