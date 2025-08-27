import 'package:get/get.dart';

class CustomerContactSupportScreenController extends GetxController {
  // Track selected problem type
  var selectedProblem = 'System Problem'.obs;

  // Update the selected problem type
  void selectProblem(String problem) {
    selectedProblem.value = problem;
    update();
  }
}