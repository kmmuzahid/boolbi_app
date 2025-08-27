class AppApiUrl {
  AppApiUrl._();

  static const String domain = "http://nadir.binarybards.online/";
  // static const String domain = "http://10.0.80.75:6004/";
  static const String baseUrl = "http://nadir.binarybards.online/api/v1";
  // static const String baseUrl = "http://10.0.80.75:6004/api/v1";
  static const String soketUrl = "http://nadir.binarybards.online";
  // static const String soketUrl = "http://10.0.80.75:6004";
  static const String token = "/auth/refresh-token";
  static const String signUpUrl = "/user"; // Done
  static const String signInUrl = "/auth/login";
  static const String verifyEmailUrl = "/auth/verify-email";
  static const String deleteAccountUrl = "/auth/delete-account";
  static const String forgotPasswordUrl = "/auth/forgot-password";
  static const String resendOTPUrl = "/auth/resend-otp";
  static const String resetPasswordUrl = "/auth/reset-password";
  static const String changePasswordUrl = "/auth/change-password";
  static const String notificationUrl = "/notification";
  // Role
  static const String faqUrl = "/faq";
  static const String aboutUsUrl = "/rule/about";
  static const String privacyPolicyUrl = "/rule/privacy-policy";
  static const String termsAndConditionsUrl = "/rule/terms-and-conditions";
  // Seller
  static const String getProfileUrl = "/user/profile";
  static const String updateProfileUrl = "/user";
  static const String sellerInitBankInfoUpdateUrl = "/bank";
  static const String getSellerProductListUrl = "/product";
  static const String createSellerProductUrl = "/product";
  static const String getSellerProductDetailsUrl = "/product/";
  static const String getStatisticsDataUrl = "/seller/statistics";
  static const String getCategoryListUrl = "/category";
  static const String sellerContactUrl = "/contact";
  static const String sellerReportUrl = "/report";
  static const String sellerHomeScreenUrl = "/seller/summary";
  static const String sellerOrderDetailsUrl = "/seller/";
  static const String sellerTrendingProductListUrl = "/seller/trending";
  static const String sellerExchangeUrl = "/exchange";
  // User
  static const String userGetClosetCollectionUrl = "/collection";
  static const String userGetClosetCollectionProductListUrl = "/closet?collection=";
  static const String userCreateClosetCollectionUrl = "/collection";
  static const String userSearchProductUrl = "/product/productList";
  static const String userGetCartListUrl = "/cart";
  static const String userOrderHistoryListUrl = "/order/history";
  static const String userGetBannarListUrl = "/banner";
  static const String userSaveProductInClosetUrl = "/closet";
  static const String userMakeProductLikeUrl = "/like";
  static const String userCheckOutUrl = "/order";
  static const String userExchangeUrl = "/exchange";
  static const String userExchangeOrderListUrl = "/exchange/order-items";
  static const String userOrderHistoryDetailsUrl = "/order/";

  static const String userMakeProductOnlyLikeUrl = "/like/like";
  static const String userMakeProductOnlyDisLikeUrl = "/like/dis-like";
}
