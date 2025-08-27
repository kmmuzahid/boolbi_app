import 'package:boolbi_app/main_app_entry.dart';
import 'package:boolbi_app/service/connectivity_service/connectivity_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

// import 'package:video_player_media_kit/video_player_media_kit.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  await GetStorage.init();
  Get.put(ConnectivityService());
  ////////////////  video player init
  // VideoPlayerMediaKit.ensureInitialized(android: true, iOS: true);
  SystemChrome.setPreferredOrientations([
    // DeviceOrientation.portraitDown, // Lock to portrait mode
    DeviceOrientation.portraitUp, // Lock to portrait mode
  ]).then((_) { 
    runApp(const MainAppEntry());
  });
}
