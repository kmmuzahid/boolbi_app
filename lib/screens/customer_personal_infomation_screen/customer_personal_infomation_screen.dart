import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/customer_personal_infomation_screen/controllers/customer_personal_infomation_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/custom_appbar/user_custom_appbar.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:country_code_picker/country_code_picker.dart';

import '../../widgets/log_print/app_log.dart';


class CustomerPersonalInfomationScreen extends StatelessWidget {
  const CustomerPersonalInfomationScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder(
        init: CustomerPersonalInfomationScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "Personal Information"),
            body: SingleChildScrollView(
              child: Column(children: [
                const Gap(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          AppText(
                            data: "Name :",
                            fontSize: 16,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w800,
                          ),
                        ],
                      ),
                    ),
                    const Gap(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: AppInputWidgetTwo(
                          // controller: controller.emailTextEditingController,
                          hintText: "Write Name...",
                          cursorColor: AppColors.primary,
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.primary,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          isEmail: true,
                          fillColor: AppColors.deepWhte,
                          textInputAction: TextInputAction.next,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                      ),
                    ),
                    const Gap(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          AppText(
                            data: "Email :",
                            fontSize: 16,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w800,
                          ),
                        ],
                      ),
                    ),
                    const Gap(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: AppInputWidgetTwo(
                          // controller: controller.emailTextEditingController,
                          hintText: "Write Email...",
                          cursorColor: AppColors.primary,
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.primary,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          isEmail: true,
                          fillColor: AppColors.deepWhte,
                          textInputAction: TextInputAction.next,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                      ),
                    ),
                    const Gap(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          AppText(
                            data: "Phone Number :",
                            fontSize: 16,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w800,
                          ),
                        ],
                      ),
                    ),
                    const Gap(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: AppInputWidgetTwo(
                          keyboardType:  TextInputType.number,
                          // controller: controller.emailTextEditingController,
                          hintText: "Write Phone Number...",
                          cursorColor: AppColors.primary,
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.primary,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          isEmail: true,
                          fillColor: AppColors.deepWhte,
                          textInputAction: TextInputAction.next,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                      ),
                    ),
                        const Gap(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          AppText(
                            data: "City :",
                            fontSize: 16,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w800,
                          ),
                        ],
                      ),
                    ),
                    const Gap(height: 10),
                     Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                       child: Container(
                                       
                                    height: 55,
                                    width: AppSize.size.width,
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: AppColors.primary),
                                    ),
                                    child: CountryCodePicker(
                                      onInit: (code) {
                                        appLog(code?.code ?? '');
                                      },
                                      initialSelection: 'BD',
                                      padding: EdgeInsets.zero,
                                      flagWidth: 30,
                                      onChanged: (value) {
                                        controller.countryCode.value =
                                            value.code ?? "";
                                        appLog(value.code);
                                      },
                       
                                      // Customizations to show only flag + country name
                                      showDropDownButton:
                                          false, // Remove dropdown arrow
                                      hideMainText: false, // Show country name
                                      showFlagMain: true, // Show main flag
                                      showFlag: true, // Ensure flag is visible
                                      showCountryOnly: true, // Hide dial code
                                      showOnlyCountryWhenClosed:
                                          true, // Maintain country view
                                      alignLeft: true, // Align left
                       
                                      // Style adjustments
                                      // flagPadding: const EdgeInsets.only(left: 8, right:333
                                      textStyle: const TextStyle(
                                        color: Colors
                                            .black, // Adjust text color as needed
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                     ),
                            const Gap(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          AppText(
                            data: "Postal Code :",
                            fontSize: 16,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w800,
                          ),
                        ],
                      ),
                    ),
                    const Gap(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: AppInputWidgetTwo(
                          keyboardType:  TextInputType.number,
                          // controller: controller.emailTextEditingController,
                          hintText: "Write Postal Code...",
                          cursorColor: AppColors.primary,
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: AppColors.primary,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          isEmail: true,
                          fillColor: AppColors.deepWhte,
                          textInputAction: TextInputAction.next,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                      ),
                    ),
                    const Gap(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          AppText(
                            data: "Address :",
                            fontSize: 16,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w800,
                          ),
                        ],
                      ),
                    ),
                    const Gap(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: AppInputWidgetTwo(
                        minLines: 3,
                        
                        // controller: controller.emailTextEditingController,
                        hintText: "Write here..",
                        cursorColor: AppColors.primary,
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: AppColors.primary,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        filled: true,
                        isEmail: true,
                        fillColor: AppColors.deepWhte,
                        textInputAction: TextInputAction.newline,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                      ),
                    ),
                     ///////// Button
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                          // adminRequireDialogBox();
                        },
                        child: Container(
                          width: Get.width,
                          height: AppSize.width(value: 50.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius:
                                  BorderRadius.circular(AppSize.width(value: 8))),
                          child: const AppText(
                            data: "Saved & Changed",
                            fontSize: 18,
                            color: AppColors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                
                            ],),
            ) ,
          );
        });
  }
}
