import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProviderViewAllRecommendedProjectPostScreenController
    extends GetxController {
  RxList<String> sortListDropDownValueList = <String>{
    "Newest",
    "Oldest",
  }.toList().obs;
  RxBool isShow = false.obs;
  RxList<String> categoryDropDownValueList = <String>{
    "Professional",
    "Professiodsdnal",
    "Professidfonal",
    "Professiodfnal",
    "Professionadfdl",
    "Professioadnwal",
  }.toList().obs;

  RxList<String> subCategoryDropDownValueList = <String>{
    "Professional",
    "Business Casual",
    "Business Casual2",
    "Business Casual3",
    "Business Casdfual",
    "Business Cadfdsual",
    "Business Casdfualgfg",
    "Business Casual32",
    "Business Casual43",
    "Business Casdfua fgl",
    "Business Cadfdsufgfal",
    "Business Casdfuassl",
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

  final ScrollController scrollController = ScrollController();
  @override
  void onInit() async {
    super.onInit();
  }
}
