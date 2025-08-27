import 'dart:developer';

import 'package:boolbi_app/widgets/image_user_pic/multiple_image_user_pi.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:file_picker/file_picker.dart';

class ProviderDeliveryRequestScreenController extends GetxController {
  final ScrollController scrollController = ScrollController();

  // Image
  RxList<String> localImagePath = <String>[].obs;
  clickImagePic() {
    imageUserTake2(localImagePath);
  }

  /////  PDF File Pick
  RxString pickedFileName = "".obs;
  RxString pickedFileSize = "".obs;
  RxString locatlVideoPath = "".obs;
  RxBool isVideoValid = false.obs;
  pickedFileCloseButton() {
    pickedFileName.value = "";
    pickedFileSize.value = "";
  }

  Future<void> callFilePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      // allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: [
        // 'mp4',
        'pdf',
        // 'mov'
      ],
    );

    if (result != null) {
      PlatformFile file = result.files.first;
      // pickedFileName.value = file.path!.split("/").last;
      pickedFileName.value = file.name;
      locatlVideoPath.value = file.path ?? "";

      pickedFileSize.value = convertBytes(file.size);

      // pickedFileBytes.value = file.bytes;
      // pickedFilePath.value = file.path!.split("/").last;
    } else {
      // User canceled the picker
      log("Cancel The Picker");
    }
  }

  /// A function to convert bytes into KB, MB, or GB in Flutter.
  String convertBytes(int bytes) {
    if (bytes < 1024) {
      return '$bytes bytes';
    } else if (bytes < 1048576) {
      double kb = bytes / 1024;
      return '${kb.toStringAsFixed(2)} KB';
    } else if (bytes < 1073741824) {
      double mb = bytes / 1048576;
      return '${mb.toStringAsFixed(2)} MB';
    } else {
      double gb = bytes / 1073741824;
      return '${gb.toStringAsFixed(2)} GB';
    }
  }
}
