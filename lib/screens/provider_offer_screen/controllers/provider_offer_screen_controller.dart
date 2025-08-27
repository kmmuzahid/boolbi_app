import 'package:get/get.dart';

class ProviderOfferScreenController extends GetxController {
  RxList<String> sortListDropDownValueList = <String>{
    "Newest",
    "Oldest",
  }.toList().obs;
}
