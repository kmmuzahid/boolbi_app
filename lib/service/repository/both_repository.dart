import 'package:boolbi_app/service/api/api_patch_services.dart';
import 'package:boolbi_app/widgets/log_print/app_log.dart';
import '../../const/api_url/api_url.dart';
import '../../screens/notification_screen/model/notification_model.dart';
import '../../screens/customer_faq_screen/model/faq_model.dart';
import '../../widgets/model/profile_model.dart';
import '../api/api_get_services.dart';

class BothRepository {
  // Repo

  // Get Profile data
  Future<dynamic> getProfileData() async {
    try {
      // Api Call
      var response = await ApiGetServices().apiGetServices(
        AppApiUrl.getProfileUrl,
      );
      if (response != null) {
        return ProfileModel.fromJson(response["data"]);
      } else {
        throw Exception("Failed to load profile data");
      }
    } catch (e) {
      appLog('error comes form Seller Repository method: $e');
    }
    return null;
  }

  // Get Privacy Policy data
  Future<dynamic> getPrivacyPolicyData() async {
    try {
      // Api Call
      var data = await ApiGetServices().apiGetServices(AppApiUrl.privacyPolicyUrl);
      if (data["data"] != null) {
        if (data["data"]["content"] != null) {
          return data["data"]["content"];
        }
      }
    } catch (e) {
      appLog(e);
    }
    return null;
  }

  // Get Terms And Conditions data
  Future<dynamic> getTermsAndConditionsData() async {
    try {
      //  Api Call
      var data = await ApiGetServices().apiGetServices(AppApiUrl.termsAndConditionsUrl);
      if (data["data"] != null) {
        if (data["data"]["content"] != null) {
          return data["data"]["content"];
        }
      }
    } catch (e) {
      appLog(e);
    }
    return null;
  }

  // Get FAQ Screen data
  Future<dynamic> getFAQData({int page = 1, int limit = 10}) async {
    try {
      var data = await ApiGetServices().apiGetServices("${AppApiUrl.faqUrl}?page=$page&limit=$limit");
      if (data["data"] != null) {
        return (data["data"] as List).map((e) => FaqModel.fromJson(e)).toList();
      }
    } catch (e) {
      appLog(e);
    }
    return null;
  }

  // Get About Screen Data
  Future<dynamic> getAboutScreenData() async {
    try {
      // Api Call
      var data = await ApiGetServices().apiGetServices(AppApiUrl.aboutUsUrl);
      if (data["data"] != null) {
        if (data["data"]["content"] != null) {
          return data["data"]["content"];
        }
      }
    } catch (e) {
      appLog(e);
    }
    return null;
  }

  // Get Read Notification
  Future<dynamic> readAllNotification() async {
    try {
      // Api Call
      var data = await ApiPatchServices().apiPatchServices(url: AppApiUrl.notificationUrl);
      if (data != null) {
        return data;
      }
    } catch (e) {
      appLog(e);
    }
    return null;
  }

  // Get Notification list

  Future<List<NotificationModel>> getNotificationList({int page = 1, int limit = 10}) async {
    List<NotificationModel> dataList = <NotificationModel>[];

    try {
      var response = await ApiGetServices().apiGetServices("${AppApiUrl.notificationUrl}?page=$page&limit=$limit");
      if (response["data"] != null) {
        final findData = response["data"];
        if (findData["notifications"] != null && findData["notifications"] is List) {
          for (var element in findData["notifications"]) {
            dataList.add(NotificationModel.fromJson(element));
          }
        }
      } else {
        appLog("No data found");
      }
    } catch (e) {
      appLog("Error in get Notification List: $e");
    }

    return dataList;
  }
}
