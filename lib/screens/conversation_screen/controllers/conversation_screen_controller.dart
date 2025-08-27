import 'dart:developer';
import 'package:boolbi_app/widgets/log_print/app_log.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:boolbi_app/const/app_const/app_const.dart';
import 'package:boolbi_app/screens/conversation_screen/model/message_get_model.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class ConversationScreenController extends GetxController {
  RxList<MessageGetModel> listOfMessageData = <MessageGetModel>[].obs;
  RxInt selectedIndex = 0.obs;

  RxBool isOpenServicesList = false.obs;
  RxBool isLoadingService = false.obs;
  RxBool isJobCategoryCheck = RxBool(false);
  RxString selectedServicesID = "".obs;
  RxString selectedServicesCategory = "Select Service".obs;

  //// Socket
  late io.Socket socket;
  RxBool isLoading = false.obs;

  RxBool isLoadingUploadImage = false.obs;
  RxBool isSendingMessage = false.obs;
  late RxBool initDate = false.obs;
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  final TextEditingController dateTextController = TextEditingController();
  final TextEditingController chatController = TextEditingController();
  final ScrollController scrollController = ScrollController();
  RxString userType = "".obs;
  RxString userScreen = "".obs;
  final FocusNode focusNode = FocusNode();
  //Image Picker
  final ImagePicker picker = ImagePicker();
  RxBool isOnTextFeild = false.obs;

  RxBool focuse = false.obs;
//////////////////////////////////// Pagination part
  RxInt paginationCount = 1.obs;
  RxBool hasMore = true.obs;
  RxBool isLoadingMore = false.obs;
  RxBool isLast = false.obs;

//////////////////////////////////// Message List
  Future<void> initialDataLoadFunction() async {
    getArguments();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getUserScreen();
    });
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent - 200 &&
          !isLoadingMore.value &&
          hasMore.value) {
        addNewMessageItems();
      }
    });
    appSocketConnect();
    await getMessageList();
  }

  @override
  void onInit() {
    initialDataLoadFunction();
    super.onInit();
  }

  @override
  void onClose() {
    chatController.dispose();
    scrollController.dispose();
    // socket.dispose();
    super.onClose();
  }

//////////////////////////////////// Fetch Initial Messages
  Future<void> getMessageList() async {
    try {
      isLoading.value = true;

      // var data =  null;
      // await ProfessionalRepository().getChatMessageListData(
      //   chatId: argData.chatId,
      //   page: paginationCount.value,
      // );

      // if (data.isNotEmpty) {
      //   listOfMessageData.value = data;
      //   paginationCount.value += 1;
      // } else {
      //   // No more data, set hasMore to false
      //   hasMore.value = false;
      // }
    } catch (e) {
      log("Error in getMessageList: $e");
    } finally {
      isLoading.value = false;
    }
  }

//////////////////////////////////// Load More Messages
  Future<void> addNewMessageItems() async {
    if (isLoadingMore.value || !hasMore.value) return;

    try {
      isLoadingMore.value = true;

      // var data =  null;
      //  await ProfessionalRepository().getChatMessageListData(
      //   chatId: argData.chatId,
      //   page: paginationCount.value,
      // );

      // if (data.isNotEmpty) {
      //   listOfMessageData.addAll(data);
      //   paginationCount.value += 1;
      // } else {
      //   hasMore.value = false;
      // }
    } catch (e) {
      log("Error in addNewMessageItems: $e");
    } finally {
      isLoadingMore.value = false;
    }
  }

  Future<void> onlyTextSend() async {
    if (chatController.text != "") {
      isSendingMessage.value = true;
      // Map<String, dynamic> body = {
      //   "receiverId": argData.sId,
      //   "message": chatController.text,
      // };
      // Api Call
      // var data =  null;
      // await ImageRepository().imageUploadWithData2(
      //   body: body,
      //   url: "${AppApiUrl.sendMessage}${argData.chatId}",
      // );
      // if (data != null) {
      //   listOfMessageData.insert(listOfMessageData.length, data);
      // }

      update();
      chatController.text = "";
         isSendingMessage.value = false;
    }
  }

  Future<void> sendMessage() async {
    try {
      isSendingMessage.value = true;
      await onlyTextSend();
    } catch (e) {
      appLog(" Demo Error $e");
    } finally {
      isSendingMessage.value = false;
    }
  }

  void appSocketConnect() {
    try {
      socket = io.io(
        AppConst.soketUrl,
        io.OptionBuilder()
            .setTransports(['websocket'])
            .setReconnectionAttempts(3)
            .build(),
      );
      socket.connect();
      socket.onConnect((_) {
        log('Connected to the socket server');
      });
      socket.onDisconnect(
        (data) {
          log("socket on disconnect $data");
        },
      );
      socket.onConnectError(
        (data) {
          log("socket on connection error $data");
        },
      );
      socket.onError(
        (data) {
          log("socket on error $data");
        },
      );
      socket.onPing(
        (data) {
          log("socket on ping $data");
        },
      );
      socket.on(
        "getMessage::${argData.chatId}",
        (data) {
          try {
            appLog(" This is Receiver ID :$data");
            final message = MessageGetModel.fromJson(data);
            // Emit Function
            emitFunctionTocallAsad(data["receiverId"]);
            listOfMessageData.insert(
                0, message); // Add at the start of the list
            listOfMessageData.refresh();
          } catch (e) {
            log("Error parsing message: $e");
          }
        },
      );
    } catch (e) {
      log("error form socket connect : $e");
    }
  }

  void emitFunctionTocallAsad(message) {
    Map<String, dynamic> body = {
      "chatId": argData.chatId,
      "data": message,
    };
    appLog("emit Function To call Asad: $message");
    appLog("emit Function Tocall Asad: ${message["_id"]}");
    // Asad Say...
    socket.emit('readingMessage', body);
  }

  // ChatListModel argData = ChatListModel();
  dynamic argData ;

  // Get arguments and get value Randomly
  void getArguments() {
    if (Get.arguments.runtimeType != Null) {
      argData = Get.arguments;
    }
  }

  outSideClick() {
    FocusManager.instance.primaryFocus?.unfocus();
    isOnTextFeild.value = false;
    focuse.value = false;
  }

  getUserScreen() {
    if (Get.arguments != Null) {
      var argData = Get.arguments;
      userScreen.value = argData.toString();
    }
  }

  void sendImage(ImageSource source, String time) async {
    final pickedFile = await picker.pickImage(source: source);

    try {
      if (pickedFile != null) {
        isLoadingUploadImage.value = true;
        // Map<String, dynamic> body = {
        //   "receiverId": argData.sId,
        // };
        // Api Call
        // var data =  null;
        // await ImageRepository().imageUploadWithData2(
        //   body: body,
        //   imagePath: pickedFile.path,
        //   url: "${AppApiUrl.sendMessage}${argData.chatId}",
        // );
        // if (data != null) {
        //   AppSnackBar.success("Success");
        // }
      }
    } catch (e) {
      appLog(e);
    } finally {
      isLoadingUploadImage.value = false;
    }
  }
}
