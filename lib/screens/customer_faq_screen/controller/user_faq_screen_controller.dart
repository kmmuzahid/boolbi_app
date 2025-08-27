import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/service/repository/both_repository.dart';
import '../../../widgets/log_print/app_log.dart';
import '../model/faq_model.dart';

class UserFaqScreenController extends GetxController {
  RxList<FaqModel> faqList = <FaqModel>[].obs;
  RxBool isLoading = false.obs;
  RxInt currentPage = 1.obs;
  final int limit = 10;
  bool hasMoreData = true;
  late ScrollController scrollController;

  @override
  void onInit() {
    scrollController = ScrollController()..addListener(_scrollListener);
    getFAQData();
    super.onInit();
  }

  void _scrollListener() {
    if (scrollController.position.pixels == scrollController.position.maxScrollExtent && hasMoreData) {
      getFAQData();
    }
  }

  getFAQData() async {
    if (isLoading.value) return;
    isLoading.value = true;

    try {
      var data = await BothRepository().getFAQData(page: currentPage.value, limit: limit);
      if (data != null && data.isNotEmpty) {
        faqList.addAll(data);
        currentPage.value++;
      } else {
        hasMoreData = false;
      }
    } catch (e) {
      appLog(e);
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
