import 'package:boolbi_app/widgets/image_user_pic/multiple_image_user_pi.dart';
import 'package:boolbi_app/widgets/image_user_pic/single_image_user_pi.dart';
import 'package:get/get.dart';

class ProviderPersonalInfomationScreenController extends GetxController {
 
   RxString countryCode = "".obs;
 // goToNextScreen() async {
  //   await Future.delayed(
  //     const Duration(seconds: 2),
  //     () {
  //       Get.toNamed(AppRoutes.navigationScreen);
  //       selectedUser = Usertype.customer;
  //       // Get.offAllNamed(AppRoutes.navigationScreen);

  //       // if (AppStorage().getValue(StorageKey.loginValue) == null) {
  //       //   Get.offAllNamed(AppRoutes.startPage);
  //       // } else {
  //       //   if (AppStorage().getValue(StorageKey.setLoginUserRole) == "USER") {
  //       //     selectedUser = Usertype.user;
  //       //   } else if (AppStorage().getValue(StorageKey.setLoginUserRole) == "SELLER") {
  //       //     selectedUser = Usertype.seller;
  //       //   }
  //       //   Get.offAllNamed(AppRoutes.navigationScreen);
  //       // }
  //     },
  //   );
  // }

  // @override
  // void onInit() async {
  //   super.onInit();
  //   goToNextScreen();
  // }
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
    // "Casual",
    "Business Casual",
    "Business Casual2",
    "Business Casual3",
    "Business Casdfual",
    "Business Cadfdsual",
    "Business Casdfua5l",
    "Business Casual32",
    "Business Casual43",
    "Business Casdfua6l",
    "Business Cadfds7ual",
    "Business Casdfu8al",
    // "Professiondal",
    // "Casual",
    // "Business Casual",
  }.toList().obs;

   // Image
  RxList<String> localImagePathList = <String>[].obs;
  RxString localImagePath = "".obs;
  clickImagePicMultiple() {
    imageUserTake2(localImagePathList);
  }
  clickImagePic() {
    imageUserTake(localImagePath);
  }

 
}
