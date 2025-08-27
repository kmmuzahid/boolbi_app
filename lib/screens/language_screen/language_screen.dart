import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/language_screen/controllers/language_screen_controller.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/custom_appbar/user_custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LanguageScreenController>(
      init: LanguageScreenController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.primaryBackgroud,
          appBar: customerCustomAppBar(title: "language"),
          body: Column(
            children: [
             const Gap(height: 20),
              // List of languages with radio buttons
              Column(
                children: controller.languages.map((language) {
                  // bool isSelected = controller.selectedLanguage == language;

                  return GestureDetector(
                    onTap: () {
                      controller.changeLanguage(language);  // Change language when text is tapped
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Row(
                        children: [
                          // Radio button
                          Radio<String>(
                            value: language,
                            groupValue: controller.selectedLanguage,
                            fillColor:  WidgetStateProperty.all(AppColors.primary)  ,
                        
                            onChanged: (String? value) {
                              controller.changeLanguage(value);  // Change language when radio button is clicked
                            },
                          ),
                          // Language text
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                language,
                                style: const TextStyle(
                                  fontSize: 16 ,
                                  fontWeight:  FontWeight.w600,
                                  color:AppColors.primary,
                                ),
                              ),
                              Text(
                                language ,
                                style: TextStyle(
                                  fontSize: 11 ,
                                  fontWeight: FontWeight.w500,
                                  color:   Colors.grey.shade500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        );
      }
    );
  }
}