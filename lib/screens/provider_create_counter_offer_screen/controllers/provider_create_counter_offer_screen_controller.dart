import 'package:boolbi_app/widgets/custom_show_date_picker/custom_show_date_picker.dart';
import 'package:boolbi_app/widgets/image_user_pic/multiple_image_user_pi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProviderCreateCounterOfferScreenController extends GetxController {
//Offer Validity Time
  RxList<String> offerValidityTimeDropDownValueList = <String>{
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
  }.toList().obs;
// Date Pick
  TextEditingController startDateTextEditingController =
      TextEditingController();
  TextEditingController endDateTextEditingController = TextEditingController();
  DateTime? offerStartDate;
  DateTime? offerEndDate;
  callStartTimeSet() async {
    final pickStartTime = await customShowDatePicker(
      context: Get.context!,
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (pickStartTime != null) {
      offerStartDate = pickStartTime;
      String day = pickStartTime.day.toString().padLeft(2, '0');
      String month = pickStartTime.month.toString().padLeft(2, '0');
      String year = pickStartTime.year.toString();
      startDateTextEditingController.text = "$day-$month-$year";
      update();
    }
  }

  callEndTimeSet() async {
    final pickEndTime = await customShowDatePicker(
      context: Get.context!,
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (pickEndTime != null) {
      offerEndDate = pickEndTime;
      String day = pickEndTime.day.toString().padLeft(2, '0');
      String month = pickEndTime.month.toString().padLeft(2, '0');
      String year = pickEndTime.year.toString();
      endDateTextEditingController.text = "$day-$month-$year";
    }
  }

  // Image
  RxList<String> localImagePath = <String>[].obs;
  clickImagePic() {
    imageUserTake2(localImagePath);
  }
}
