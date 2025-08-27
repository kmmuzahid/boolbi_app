import 'package:boolbi_app/widgets/custom_show_date_picker/custom_show_date_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProviderRunningProjectProjectProgressScreenController extends GetxController {

  final ScrollController scrollController = ScrollController();
    RxDouble rate = 0.0.obs;
 // Date Pick
   TextEditingController endDateTextEditingController = TextEditingController();

   DateTime? offerEndDate;

  callEndTimeSet() async {
    final pickEndTime = await customShowDatePicker(
      context: Get.context!,
      firstDate:  DateTime.now(),
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

}
