import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_media_downloader/flutter_media_downloader.dart';

class CustomerCompletedProjectDeliveryRequestScreenController
    extends GetxController {
  MediaDownload? flutterMediaDownloaderPlugin;

  final ScrollController scrollController = ScrollController();
  RxDouble rate = 0.0.obs;
  RxList<String> extendTimeDropDownValueList = <String>{
    "1 Days",
    "2 Days",
    "3 Days",
    "4 Days",
    "5 Days",
    "6 Days",
    "7 Days",
    "8 Days",
    "9 Days",
    "10 Days",
    "11 Days",
    "12 Days",
    "13 Days",
    "14 Days",
    "15 Days",
    "16 Days",
    "17 Days",
    "18 Days",
    "19 Days",
    "20 Days",
    "21 Days",
    "22 Days",
    "23 Days",
    "24 Days",
    "25 Days",
    "26 Days",
    "27 Days",
    "28 Days",
    "29 Days",
    "30 Days",
    "31 Days",
  }.toList().obs;
  RxBool isLoadingDownloadProcess = false.obs;

  void downloadPDFFileFunction() async {
    isLoadingDownloadProcess.value = true;
    try {
      await flutterMediaDownloaderPlugin!.downloadMedia(Get.context!,
          'https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf');

      log("❤️ ${flutterMediaDownloaderPlugin.runtimeType}");
    } catch (e) {
      log("Error From download PDF File Function $e ");
    } finally {
      isLoadingDownloadProcess.value = false;
    }
  }

  @override
  void onInit() {
    flutterMediaDownloaderPlugin = MediaDownload();
    super.onInit();
  }
}
