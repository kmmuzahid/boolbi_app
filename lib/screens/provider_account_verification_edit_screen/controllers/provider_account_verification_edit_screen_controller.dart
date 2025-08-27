import 'package:boolbi_app/widgets/image_user_pic/single_image_user_pi.dart';
import 'package:get/get.dart';

class ProviderAccountVerificationEditScreenController extends GetxController {
  RxBool isRememberMe = RxBool(false);

  RxBool isSwitchedStock = false.obs;
  RxString localImagePathSignature = "".obs;
  RxString argDataImagePathSignature = "".obs;
  RxBool isImgValidSignature = false.obs;
  clickImagePic(path) {
    imageUserTake(path);
  }
}
