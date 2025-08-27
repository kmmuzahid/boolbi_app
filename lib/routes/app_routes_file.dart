import 'package:boolbi_app/routes/Internet_check_middle_ware.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/routes/bindings/navigation_app_bindings.dart';
import 'package:boolbi_app/routes/bindings/provider_app_bindings.dart';
import 'package:boolbi_app/routes/bindings/user_app_bindings.dart';
import 'package:boolbi_app/screens/change_password_successful_screen/change_password_successful_screen.dart';
import 'package:boolbi_app/screens/conversation_screen/conversation_screen.dart';
import 'package:boolbi_app/screens/create_account_successful_screen/create_account_successful_screen.dart';
import 'package:boolbi_app/screens/customer_category_view_screen/customer_category_view_screen.dart';
import 'package:boolbi_app/screens/customer_completed_project_delivery_request_screen/customer_completed_project_delivery_request_screen.dart';
import 'package:boolbi_app/screens/customer_contact_support_screen/customer_contact_support_screen.dart';
import 'package:boolbi_app/screens/customer_create_counter_offer_screen/customer_create_counter_offer_screen.dart';
import 'package:boolbi_app/screens/customer_create_job_order_screen/customer_create_job_order_screen.dart';
import 'package:boolbi_app/screens/customer_create_project_post_screen/customer_create_project_post_screen.dart';
import 'package:boolbi_app/screens/customer_edit_project_post_screen/customer_edit_project_post_screen.dart';
import 'package:boolbi_app/screens/customer_my_offer_deetails_project_post_details_screen/customer_my_offer_deetails_project_post_details_screen.dart';
import 'package:boolbi_app/screens/customer_my_service_request_details_again_details_screen/customer_my_service_request_details_again_details_screen.dart';
import 'package:boolbi_app/screens/customer_offer_request_details_again_details_screen/customer_offer_request_details_again_details_screen.dart';
import 'package:boolbi_app/screens/customer_order_progess_order_details_screen/customer_order_progess_order_details_screen.dart';
import 'package:boolbi_app/screens/customer_post_details_create_counter_offer_screen/customer_post_details_create_counter_offer_screen.dart';
import 'package:boolbi_app/screens/customer_post_offer_request_details_details_screen/customer_post_offer_request_details_details_screen.dart';
import 'package:boolbi_app/screens/customer_post_offer_request_details_screen/customer_post_offer_request_details_screen.dart';
import 'package:boolbi_app/screens/customer_post_offer_request_list_screen/customer_post_offer_request_list_screen.dart';
import 'package:boolbi_app/screens/customer_runing_project_delivery_request_screen/customer_runing_project_delivery_request_screen.dart';
import 'package:boolbi_app/screens/customer_favorite_view_all_screen/customer_favorite_view_all_screen.dart';
import 'package:boolbi_app/screens/customer_offer_request_details_screen/customer_offer_request_details_screen.dart';
import 'package:boolbi_app/screens/customer_offer_request_list_screen/customer_offer_request_list_screen.dart';
import 'package:boolbi_app/screens/customer_runing_project_order_progress_screen/customer_runing_project_order_progress_screen.dart';
import 'package:boolbi_app/screens/customer_post_job_my_service_request_details_screen/customer_post_job_my_service_request_details_screen.dart';
import 'package:boolbi_app/screens/customer_post_job_my_project_post_details_screen/customer_post_job_my_project_post_details_screen.dart';
import 'package:boolbi_app/screens/customer_post_job_screen/customer_post_job_screen.dart';
import 'package:boolbi_app/screens/customer_project_screen/customer_project_screen.dart';
import 'package:boolbi_app/screens/customer_view_delivery_request_list_screen/customer_view_delivery_request_list_screen.dart';
import 'package:boolbi_app/screens/customer_view_profile_screen/customer_view_profile_screen.dart';
import 'package:boolbi_app/screens/language_screen/language_screen.dart';
import 'package:boolbi_app/screens/customer_personal_infomation_screen/customer_personal_infomation_screen.dart';
import 'package:boolbi_app/screens/customer_post_details_screen/customer_post_details_screen.dart';
import 'package:boolbi_app/screens/customer_profile_screen/customer_profile_screen.dart';
import 'package:boolbi_app/screens/customer_search_screen/customer_search_screen.dart';
import 'package:boolbi_app/screens/customer_setting_screen/customer_setting_screen.dart';
import 'package:boolbi_app/screens/customer_view_all_category_screen/customer_view_all_category_screen.dart';
import 'package:boolbi_app/screens/customer_view_all_recommended_provider_screen/customer_view_all_recommended_provider_screen.dart';
import 'package:boolbi_app/screens/onboard_screen/on_board_screen.dart';
import 'package:boolbi_app/screens/provider_comnpleted_project_details_screen/provider_comnpleted_project_details_screen.dart';
import 'package:boolbi_app/screens/provider_project_order_details_my_offer_details_screen/provider_project_order_details_my_offer_details_screen.dart';
import 'package:boolbi_app/screens/provider_running_project_order_status_details_screen/provider_running_project_order_status_details_screen.dart';
import 'package:boolbi_app/screens/provider_account_verification_edit_screen/provider_account_verification_edit_screen.dart';
import 'package:boolbi_app/screens/provider_account_verification_screen/provider_account_verification_screen.dart';
import 'package:boolbi_app/screens/provider_create_counter_offer_screen/provider_create_counter_offer_screen.dart';
import 'package:boolbi_app/screens/provider_create_offer_screen/provider_create_offer_screen.dart';
import 'package:boolbi_app/screens/provider_delivery_request_screen/provider_delivery_request_screen.dart';
import 'package:boolbi_app/screens/provider_home_screen/provider_home_screen.dart';
import 'package:boolbi_app/screens/provider_my_offer_details_screen/provider_my_offer_details_screen.dart';
import 'package:boolbi_app/screens/provider_offer_screen/provider_offer_screen.dart';
import 'package:boolbi_app/screens/provider_running_project_project_progress_screen/provider_running_project_project_progress_screen.dart';
import 'package:boolbi_app/screens/provider_personal_infomation_screen/provider_personal_infomation_screen.dart';
import 'package:boolbi_app/screens/provider_post_details_screen/provider_post_details_screen.dart';
import 'package:boolbi_app/screens/provider_profile_screen/provider_profile_screen.dart';
import 'package:boolbi_app/screens/provider_project_screen/provider_project_screen.dart';
import 'package:boolbi_app/screens/provider_service_requests_details_screen/provider_service_requests_details_screen.dart';
import 'package:boolbi_app/screens/provider_search_screen/provider_search_screen.dart';
import 'package:boolbi_app/screens/provider_setting_screen/provider_setting_screen.dart';
import 'package:boolbi_app/screens/provider_update_offer_screen/provider_update_offer_screen.dart';
import 'package:boolbi_app/screens/provider_view_all_recommended_project_post_screen/provider_view_all_recommended_project_post_screen.dart';
import 'package:boolbi_app/screens/splash_screen/splash_screen.dart';
import 'package:boolbi_app/screens/start_page.dart/start_page.dart';
import 'package:boolbi_app/screens/customer_home_screen/customer_home_screen.dart';
import 'package:boolbi_app/screens/view_profile_screen/view_profile_screen.dart';
import 'package:boolbi_app/screens/welcome_page.dart/welcome_page.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/routes/bindings/app_initial_binding.dart';
import 'package:boolbi_app/screens/auth_screen/for_got_screen/for_got_screen.dart';
import 'package:boolbi_app/screens/auth_screen/otp_verification_screen/otp_verification_screen.dart';
import 'package:boolbi_app/screens/auth_screen/reset_password_screen/reset_password_screen.dart';
import 'package:boolbi_app/screens/auth_screen/sign_in_screen/sign_in_screen.dart';
import 'package:boolbi_app/screens/auth_screen/sign_up_screen/sign_up_screen.dart';
import 'package:boolbi_app/screens/change_password_screen/change_password_screen.dart';
import 'package:boolbi_app/screens/create_new_password_screen/create_new_password_screen.dart';
import 'package:boolbi_app/screens/error_screen/error_screen.dart';
import 'package:boolbi_app/screens/navigation_screen/navigation_screen.dart';
import 'package:boolbi_app/screens/choose_auth_screen/choose_auth_screen.dart';
import 'package:boolbi_app/screens/notification_screen/notification_screen.dart';

List<GetPage> appRoutesFile = <GetPage>[
  //////////////////////////////   Initial Screens    //////////////////////////////
  GetPage(
    name: AppRoutes.initial,
    page: () => const SplashScreen(),
    binding: AppInitialBinding(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.chooseAuthScreen,
    page: () => const ChooseAuthScreen(),
    binding: AppInitialBinding(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.startPage,
    page: () => const StartPage(),
    // binding: AppInitialBinding(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.welcomePage,
    page: () => const WelcomePage(),
    // binding: NavigationAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.errorScreen,
    page: () => const ErrorScreen(),
    // middlewares: [InternetCheckMiddleWare()],
  ),

  //////////////////////////////   Auth Screens    //////////////////////////////
  GetPage(
    name: AppRoutes.signIn,
    page: () => const SignInScreen(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.signUp,
    page: () => const SignUpScreen(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.forGot,
    page: () => const ForGotScreen(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.otpVerificationScreen,
    page: () => const OtpVerificationScreen(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.resetPasswordScreen,
    page: () => const ResetPasswordScreen(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.onBoardScreen,
    page: () => const OnBoardScreen(),
    middlewares: [InternetCheckMiddleWare()],
  ),

  //////////////////////////////   Nav Screens    //////////////////////////////
  GetPage(
    name: AppRoutes.navigationScreen,
    page: () => const NavigationScreen(),
    binding: NavigationAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.createNewPasswordScreen,
    page: () => const CreateNewPasswordScreen(),
    binding: NavigationAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.changePasswordScreen,
    page: () => const ChangePasswordScreen(),
    binding: NavigationAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.contactSupportScreen,
    page: () => const CustomerContactSupportScreen(),
    binding: NavigationAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.conversationScreen,
    page: () => const ConversationScreen(),
    binding: NavigationAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),

  //////////////////////////////   Seller Screens    //////////////////////////////
  GetPage(
    name: AppRoutes.notificationScreen,
    page: () => const NotificationScreen(),
    binding: AppInitialBinding(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.changePasswordSuccessfulScreen,
    page: () => const ChangePasswordSuccessfulScreen(),
    binding: AppInitialBinding(),
    middlewares: [InternetCheckMiddleWare()],
  ),

  GetPage(
    name: AppRoutes.createAccountSuccessfulScreen,
    page: () => const CreateAccountSuccessfulScreen(),
    binding: AppInitialBinding(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.viewProfileScreen,
    page: () => const ViewProfileScreen(),
    binding: AppInitialBinding(),
    middlewares: [InternetCheckMiddleWare()],
  ),

  //////////////////////////////   User Screens    //////////////////////////////
  GetPage(
    name: AppRoutes.userHomeScreen,
    page: () => const CustomerHomeScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerViewAllCategories,
    page: () => const CustomerViewAllCategoryScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerViewAllRecommendedProviderScreen,
    page: () => const CustomerViewAllRecommendedProviderScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerSearchScreen,
    page: () => const CustomerSearchScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerPostDetailsScreen,
    page: () => const CustomerPostDetailsScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerCreateJobOrderScreen,
    page: () => const CustomerCreateJobOrderScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerCategoryViewScreen,
    page: () => const CustomerCategoryViewScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerProfileScreen,
    page: () => const CustomerProfileScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerPersonalInformationScreen,
    page: () => const CustomerPersonalInfomationScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerSettingScreen,
    page: () => const CustomerSettingScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerLanguageScreen,
    page: () => const LanguageScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerJobPostScreen,
    page: () => const CustomerPostJobScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerProjectScreen,
    page: () => const CustomerProjectScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerOfferRequestListScreen,
    page: () => const CustomerOfferRequestListScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerOrderRequestDetailsScreen,
    page: () => const CustomerOfferRequestDetailsScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerFavoriteViewAllScreen,
    page: () => const CustomerFavoriteViewAllScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerRuningProjectOrderProgressScreen,
    page: () => const CustomerRuningProjectOrderProgressScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  // GetPage(
  //   name: AppRoutes.customerCompletedProjectOrderProgressScreen,
  //   page: () => const CustomerCompletedProjectOrderProgressScreen(),
  //   binding: UserAppBindings(),
  //   middlewares: [
  //     InternetCheckMiddleWare()
  //   ],
  // ),
  GetPage(
    name: AppRoutes.customerRuningProjectDeliveryRequestScreen,
    page: () => const CustomerRuningProjectDeliveryRequestScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerCompletedProjectDeliveryRequestScreen,
    page: () => const CustomerCompletedProjectDeliveryRequestScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerPostJobMyServiceRequestDetailsScreen,
    page: () => const CustomerPostJobMyServiceRequestDetailsScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerPostJobMyProjectPostDetailsScreen,
    page: () => const CustomerPostJobMyProjectPostDetailsScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerMyOfferDeetailsProjectPostDetailsScreen,
    page: () => const CustomerMyOfferDeetailsProjectPostDetailsScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerCreateProjectPostScreen,
    page: () => const CustomerCreateProjectPostScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerEditProjectPostScreen,
    page: () => const CustomerEditProjectPostScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerViewDeliveryRequestListScreen,
    page: () => const CustomerViewDeliveryRequestListScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerOfferRequestDetailsAgainDetailsScreen,
    page: () => const CustomerOfferRequestDetailsAgainDetailsScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerCreateCounterOfferScreen,
    page: () => const CustomerCreateCounterOfferScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerMyServiceRequestDetailsAgainDetailsScreen,
    page: () => const CustomerMyServiceRequestDetailsAgainDetailsScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerPostOfferRequestListScreen,
    page: () => const CustomerPostOfferRequestListScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerPostOfferRequestDetailsScreen,
    page: () => const CustomerPostOfferRequestDetailsScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerPostOfferRequestDetailsDetailsScreen,
    page: () => const CustomerPostOfferRequestDetailsDetailsScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerPostDetailsCreateCounterOfferScreen,
    page: () => const CustomerPostDetailsCreateCounterOfferScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerOrderProgessOrderDetailsScreen,
    page: () => const CustomerOrderProgessOrderDetailsScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.customerViewProfileScreen,
    page: () => const CustomerViewProfileScreen(),
    binding: UserAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  ////////////////////////////////////////////////////////////// Provider
  GetPage(
    name: AppRoutes.providerHomeScreen,
    page: () => const ProviderHomeScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerProfileScreen,
    page: () => const ProviderProfileScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerPersonalInfomationScreen,
    page: () => const ProviderPersonalInfomationScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerSettingScreen,
    page: () => const ProviderSettingScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerAccountVerificationScreen,
    page: () => const ProviderAccountVerificationScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerAccountVerificationEditScreen,
    page: () => const ProviderAccountVerificationEditScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerProjectScreen,
    page: () => const ProviderProjectScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerRunningProjectProjectProgressScreen,
    page: () => const ProviderRunningProjectProjectProgressScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  // GetPage(
  //   name: AppRoutes.providerCompletedProjectProjectProgressScreen,
  //   page: () => const ProviderCompletedProjectProjectProgressScreen(),
  //   binding: ProviderAppBindings(),
  //   middlewares: [
  //     InternetCheckMiddleWare()
  //   ],
  // ),
  GetPage(
    name: AppRoutes.providerDeliveryRequestScreen,
    page: () => const ProviderDeliveryRequestScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerOfferScreen,
    page: () => const ProviderOfferScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerMyOfferDetailsScreen,
    page: () => const ProviderMyOfferDetailsScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerServiceRequestsDetailsScreen,
    page: () => const ProviderServiceRequestsDetailsScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerCreateCounterOfferScreen,
    page: () => const ProviderCreateCounterOfferScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerViewAllRecommendedProjectPostScreen,
    page: () => const ProviderViewAllRecommendedProjectPostScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerSearchScreen,
    page: () => const ProviderSearchScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerPostDetailsScreen,
    page: () => const ProviderPostDetailsScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerCreateOfferScreen,
    page: () => const ProviderCreateOfferScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerUpdateOfferScreen,
    page: () => const ProviderUpdateOfferScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerRunningProjectOrderStatusDetailsScreen,
    page: () => const ProviderRunningProjectOrderStatusDetailsScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerProjectOrderDetailsMyOfferDetailsScreen,
    page: () => const ProviderProjectOrderDetailsMyOfferDetailsScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
  GetPage(
    name: AppRoutes.providerComnpletedProjectDetailsScreen,
    page: () => const ProviderComnpletedProjectDetailsScreen(),
    binding: ProviderAppBindings(),
    middlewares: [InternetCheckMiddleWare()],
  ),
];
