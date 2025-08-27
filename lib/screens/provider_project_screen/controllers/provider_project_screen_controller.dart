import 'package:get/get.dart';

class ProviderProjectScreenController extends GetxController {
  RxList<String> sortListDropDownValueList = <String>{
    "Newest",
    "Oldest",
  }.toList().obs;
}
