import 'package:get/get.dart';
import 'package:boolbi_app/service/repository/both_repository.dart';
import '../../../widgets/log_print/app_log.dart';

class UserTermsAndConditionScreenController extends GetxController {
  RxBool isLoading = false.obs;
  RxString termsAndConditionsData = "".obs;

  getTermsAndConditionsDataData() async {
    try {
      isLoading.value = true;
      var data = await BothRepository().getTermsAndConditionsData();
      if (data != null) {
        termsAndConditionsData.value = data;
      }
    } catch (e) {
      appLog(e);
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    getTermsAndConditionsDataData();
    super.onInit();
  }
}
