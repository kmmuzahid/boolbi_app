import 'package:get/get.dart';

class LanguageScreenController extends GetxController {
  // List of available languages
  List<String> languages = ['German', 'Turkish', 'English', 'Spanish'];

  // Variable to hold selected language
  String selectedLanguage = 'English';  // Default language

  // Function to change the selected language
  void changeLanguage(String? language) {
    selectedLanguage = language ?? 'English';
    update();  // Update UI
  }
}