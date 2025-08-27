import 'package:boolbi_app/widgets/custom_show_date_picker/custom_show_date_picker.dart';
import 'package:boolbi_app/widgets/image_user_pic/multiple_image_user_pi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerCreateProjectPostScreenController extends GetxController {
  RxList<String> categoryDropDownValueList = <String>{
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
    "Business Casual",
    "Business Casual2",
    "Business Casual3",
    "Business Casdfual",
    "Business Cadfdsual",
    "Business Casdfual6",
    "Business Casual32",
    "Business Casual43",
    "Business Casdfua7l",
    "Business Cadfdsua8l",
    "Business Casdfua9l",
  }.toList().obs;

// Date Pick
  TextEditingController dateOfBirthTextEditingController =
      TextEditingController();
  DateTime? dateOfBirth;
  callDateOfBirthSet() async {
    final pickDateOfBirth = await customShowDatePicker(
      context: Get.context!,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (pickDateOfBirth != null) {
      dateOfBirth = pickDateOfBirth;
      String day = pickDateOfBirth.day.toString().padLeft(2, '0');
      String month = pickDateOfBirth.month.toString().padLeft(2, '0');
      String year = pickDateOfBirth.year.toString();
      dateOfBirthTextEditingController.text = "$day-$month-$year";
    }
  }

  // Image
  RxList<String> localImagePath = <String>[].obs;
  clickImagePic() {
    imageUserTake2(localImagePath);
  }
}
