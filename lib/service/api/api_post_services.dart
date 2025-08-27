import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:boolbi_app/service/api/api.dart';
import 'package:boolbi_app/service/api/non_auth_api.dart';

import '../../widgets/app_snack_bar/app_snack_bar.dart';

class ApiPostServices {
  apiPostServices({
    required String url,
    dynamic body,
    int statusCode = 200,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    // Dio dio = Dio(BaseOptions(
    //   receiveTimeout: Duration(seconds: 120000), // 120 seconds
    //   connectTimeout: Duration(seconds: 120000), // 120 seconds
    // ));
    Response response;
    try {
      if (token != null) {
        response = await NonAuthApi().sendRequest.post(
              url,
              data: body,
              options: Options(
                headers: {
                  "Authorization": "Bearer $token"
                },
              ),
            );
      } else {
        response = await AppApi().sendRequest.post(url, data: body);
      }

      if (response.statusCode == statusCode) {
        return response.data;
      } else {
        return null;
      }
    } on SocketException catch (e) {
      log(e.toString());
      AppSnackBar.error("Check Your Internet Connection");
      return null;
    } on TimeoutException catch (e) {
      // AppSnackBar.error("Something Went Wrong");
      log(e.toString());
      return null;
    } on DioException catch (e) {
      if (e.response.runtimeType != Null) {
        if (e.response?.data["message"].runtimeType != Null) {
          AppSnackBar.error("${e.response?.data["message"]}");
        }
        return null;
      }
      log(e.toString());
      return null;
    } catch (e) {
      // AppSnackBar.error("Something Went Wrong");
      log(e.toString());
      return null;
    }
  }
}
