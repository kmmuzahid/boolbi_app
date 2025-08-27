import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProviderSearchScreenController extends GetxController {
  RxBool isShow = false.obs;
  final ScrollController scrollController = ScrollController();
  RxList<String> categoryDropDownValueList =  <String>{
    "Professional",
    "Professiodsdnal",
    "Professidfonal",
    "Professiodfnal",
    "Professionadfdl",
    "Professioadnwal",
    // "Casual",
    // "Business Casual",
  }.toList().obs;

  RxList<String> subCategoryDropDownValueList = <String>{
    "Professional",
    // "Casual",
    "Business Casual",
    "Business Casual2",
    "Business Casual3",
    "Business Casdfual",
    "Business Cadfdsual",
    "Business Casdfureal",
    "Business Casual32",
    "Business Casual43",
    "Business Casdfdfual",
    "Business Cadffdsual",
    "Business Casdffual",
    // "Professiondal",
    // "Casual",
    // "Business Casual",
  }.toList().obs;
  RxList<String> ratingDropDownValueList = <String>{
    "1-2 Rating",
    "3-4 Rating",
    "4-5 Rating",
  }.toList().obs;
  RxList<String> distanceDropDownValueList = <String>{
    "1 km",
    "2 km",
    "3 km",
    "4 km",
    "5 km",
    "10 km",
  }.toList().obs;
  final FocusNode focusNode = FocusNode();
  @override
  void onInit() {
    var argData = Get.arguments;
    if (argData == "search_bar_click") {
      focusNode.requestFocus(); // Safe to call after frame completion
    } else if (argData == "filter_icon_click") {
      isShow.value =
          true; // Already using `await`, so it runs after `onInit` completes
    }
    super.onInit();
  }
}
