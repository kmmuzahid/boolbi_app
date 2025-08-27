import 'package:boolbi_app/service/api/api_delete_services.dart';
import 'package:boolbi_app/widgets/log_print/app_log.dart';

import '../../const/api_url/api_url.dart';
import '../api/api_post_services.dart';

class AuthRepository {
  // Auth Repo
  Future<dynamic> createAccount({required Map<String, dynamic> body}) async {
    try {
      var data = await ApiPostServices().apiPostServices(url: AppApiUrl.signUpUrl, body: body);
      if (data != null) {
        // appLog("✅✅${data}");
        return data;
      }
    } catch (e) {
      appLog("Error in Create Account :- $e");
    }
    return null;
  }

  // Delete Account
  Future<dynamic> deleteAccount({required Map<String, dynamic> body}) async {
    try {
      var response = await ApiDeleteServices().apiDeleteServices(url: AppApiUrl.signUpUrl, body: body);
      if (response != null) {
        // appLog("✅✅${response}");
        return response;
      }
    } catch (e) {
      appLog("Error in Delete Account :- $e");
    }
    return null;
  }
}
