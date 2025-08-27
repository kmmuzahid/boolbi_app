import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/const/api_url/api_url.dart';
import 'package:boolbi_app/enum_types/guest_user_type.dart';
import 'package:boolbi_app/widgets/log_print/error_log.dart';
import '../../../service/repository/both_repository.dart';
import '../../../widgets/log_print/app_log.dart';
import '../../../widgets/model/profile_model.dart';
import '../../notification_screen/controller/notification_screen_controller.dart';
import '../../notification_screen/model/notification_model.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

late io.Socket socket;

class NavigationScreenController extends GetxController {
    /////////////////////////////////////
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  RxInt selectedIndex = RxInt(0);

  changeIndex(int index) {
    selectedIndex.value = index;
  }





  /////////////////////////////////////////  vodeo player
  // AppUseVideoController appUseVideoController = AppUseVideoController();
  //////////////////////////////////////////

  /////////////////////////////////////nav
  RxInt userSelectedIndex = 0.obs;
  RxInt sellerSelectedIndex = 0.obs;

  RxInt selectedListOfBannerIndex = RxInt(1);
  late PageController listOfBannerPageViewController;
  bool isForwardDirection = true;
  // RxList<HomePageBannerModel> listOfBanner = [
  //   HomePageBannerModel(image: AssetsImagesPath.bannarImage),
  //   HomePageBannerModel(image: AssetsImagesPath.bannarImage),
  //   HomePageBannerModel(image: AssetsImagesPath.bannarImage),
  //   HomePageBannerModel(image: AssetsImagesPath.bannarImage),
  //   HomePageBannerModel(image: AssetsImagesPath.bannarImage),
  //   HomePageBannerModel(image: AssetsImagesPath.bannarImage),
  // ].obs;

  onChangeListOfBanner(int index) {
    try {
      selectedListOfBannerIndex.value = index;
      if (listOfBannerPageViewController.hasClients) {
        listOfBannerPageViewController.animateToPage(
          selectedListOfBannerIndex.value,
          duration: const Duration(seconds: 1),
          curve: Curves.ease,
        );
      }
    } catch (e) {
      log("Error in onChangeListOfBanner: $e");
    }
  }

  userChangeScreenNav(int value, bool isBack) {
    try {
      if (isBack) {
        Get.back();
      }
      userSelectedIndex.value = value;

      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) {
          update();
        },
      );
    } catch (e) {
      log("Error Print $e");
    }
  }

  sellerChangeScreenNav(int value, bool isBack) {
    try {
      if (isBack) {
        Get.back();
      }
      sellerSelectedIndex.value = value;

      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) {
          update();
        },
      );
    } catch (e) {
      log("Error Print $e");
    }
  }

  homeInitFunctionCall() {
    // clickToMoveHomePage();
    listOfBannerPageViewController = PageController(
      initialPage: selectedListOfBannerIndex.value,
      viewportFraction: 0.8,
    );
    // onListOfBannerSetUp();
  }

  ///////////////////////////// Api Integration Code
  RxBool isLoadingCategory = false.obs;
  // List<CategoryListModel> categoryList = <CategoryListModel>[];
  // Future<void> getCategoryList() async {
  //   try {
  //     isLoadingCategory.value = true;
  //     var response = await SellerRepository().getCategoryList();
  //     if (response.runtimeType != Null) {
  //       categoryList = response;
  //     }
  //   } catch (e) {
  //     appLog("getCategoryList $e");
  //   } finally {
  //     isLoadingCategory.value = false;
  //   }
  // }

  ProfileModel profileData = ProfileModel();
  Future<void> getProfileData() async {
    try {
      if (isGuest != IsUserType.guest) {
        var response = await BothRepository().getProfileData();
        if (response != null) {
          profileData = response;
        }
      }
    } catch (e) {
      appLog('error comes from Get Profile Data: $e');
    }
  }

  void appSocketConnect() {
    try {
      socket = io.io(
        AppApiUrl.soketUrl,
        io.OptionBuilder()
            .setTransports([
              'websocket'
            ])
            .setReconnectionAttempts(3)
            .build(),
      );

      socket.connect();

      socket.onConnect((_) {
        log('Connected to the socket server');
      });

      socket.onDisconnect((data) {
        log("Socket disconnected: $data");
      });

      socket.onConnectError((data) {
        log("Socket connection error: $data");
      });

      socket.onError((data) {
        log("Socket error: $data");
      });

      // socket.onPing((data) {
      //   log("Socket ping: $data");
      // });

      // Listen for notifications and update the list
      socket.on("get-notification::${profileData.id}", (value) {
        log("❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️ Notification received: $value");
        try {
          final notification = NotificationModel.fromJson(value);
          log(notification.toString());
          // notificationCount.value = notificationCount.value + 1;
          notificationList.value.insert(0, notification);
          notificationList.refresh();
          update();
        } catch (e) {
          log("Error processing notification: $e");
        }
      });
    } catch (e) {
      log("Error during socket connection setup: $e");
    }
  }
  // }

  Future<void> onAppInitialLoadFunction() async {
    try {
      await Future.wait([
        // getCategoryList(),
        getProfileData(),
      ]);
      appSocketConnect();
      // notificationSocketFunction();
      homeInitFunctionCall();
      // appUseVideoController = AppUseVideoController();
    } catch (e) {
      errorLog("message", e);
    }
  }

  void onAppClose() {
    try {
      listOfBannerPageViewController.dispose();

      //  appUseVideoController.closeApp();
    } catch (e) {
      errorLog("message", e);
    }
  }

  @override
  void onInit() {
    // onAppInitialLoadFunction();
    super.onInit();
  }

  @override
  void onClose() {
    onAppClose();
    super.onClose();
    // killDartIsolate();
    // Dispose PageController
  }
}
