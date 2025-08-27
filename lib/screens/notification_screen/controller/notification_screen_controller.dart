import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../service/repository/both_repository.dart';
import '../../../widgets/log_print/app_log.dart';
import '../model/notification_model.dart';

RxList<NotificationModel> notificationList = <NotificationModel>[].obs;

class NotificationScreenController extends GetxController {
  RxBool notificationMuteOption = false.obs;
  RxBool multiNotificationsSelect = false.obs;
  RxBool isLoading = false.obs;
  RxBool isLoadingMore = false.obs;

  int page = 1;
  int limit = 10;
  bool hasMoreData = true;
  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    // getNotificationList();

    // Listen for scroll to bottom for pagination
    scrollController.addListener(() {
      if (scrollController.position.pixels >= scrollController.position.maxScrollExtent && !isLoadingMore.value && hasMoreData) {
        getMoreOrders();
      }
    });
  }

  Future<void> readAllNotification() async {
    try {
      isLoading.value = true;
      var response = await BothRepository().readAllNotification();
      if (response != null) {
        for (var element in notificationList) {
          element.read = true;
        }
        update();
      }
    } catch (e) {
      appLog("Error in readAllNotification: $e");
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getNotificationList() async {
    try {
      isLoading.value = true;
      var response = await BothRepository().getNotificationList(page: page, limit: limit);

      if (response.isNotEmpty) {
        notificationList.value = response;
      } else {
        hasMoreData = false; // No more data to fetch
      }
    } catch (e) {
      appLog("Error in getOrderHistoryList: $e");
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getMoreOrders() async {
    if (!hasMoreData) return;

    try {
      isLoadingMore.value = true;
      page++;
      var response = await BothRepository().getNotificationList(page: page, limit: limit);

      if (response.isNotEmpty) {
        notificationList.addAll(response);
      } else {
        hasMoreData = false; // Stop pagination if no more data
      }
    } catch (e) {
      appLog("Error in get Mpre Notifications: $e");
    } finally {
      isLoadingMore.value = false;
      update();
    }
  }
}
