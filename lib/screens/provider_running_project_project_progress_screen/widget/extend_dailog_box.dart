import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/provider_running_project_project_progress_screen/controllers/provider_running_project_project_progress_screen_controller.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

extendDialogBox(ProviderRunningProjectProjectProgressScreenController controller) {
  Get.dialog(
    Dialog(
      insetPadding: const EdgeInsets.all(20),
    backgroundColor: AppColors.white,
    child: Padding(
      padding: EdgeInsets.all(
        AppSize.width(value: 20),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(height: 10),
            const Gap(height: 20),
             const Gap(height: 10),
                  // if (controller.startTimeTextEditingController.text != "")
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: Row(
                        children: [
                          AppText(
                            data: "Extend Date :",
                            fontSize: 16,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w800,
                          ),
                        ],
                      ),
                    ),
                  // if (controller.startTimeTextEditingController.text != "")
                    const Gap(height: 10),
                  // if (controller.startTimeTextEditingController.text != "")
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: AppInputWidgetTwo(
                          controller: controller.endDateTextEditingController,
                          onTap: () {
                            controller.callEndTimeSet();
                          },
                          // controller: controller.emailTextEditingController,
                          hintText: "Select Date",
                          readOnly: true,
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

            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 0),
            //   child: Row(
            //     children: [
            //       AppText(
            //         data: "Extend Time :",
            //         fontSize: 16,
            //         color: AppColors.primary,
            //         fontWeight: FontWeight.w800,
            //       ),
            //     ],
            //   ),
            // ),
            // const Gap(height: 10),
            // // Category Dropdown Section
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 0),
            //   child: DropdownButtonFormField2<String>(
            //     isExpanded: true,
            //     decoration: InputDecoration(
            //       filled: true,
        
            //       fillColor: AppColors.deepWhte,
            //       focusColor: Colors.red,
        
            //       focusedBorder: OutlineInputBorder(
            //           borderSide: const BorderSide(color: AppColors.primary),
            //           borderRadius: BorderRadius.circular(
            //             AppSize.width(value: 10.0),
            //           )),
            //       enabledBorder: OutlineInputBorder(
            //           borderSide: const BorderSide(color: AppColors.primary),
            //           borderRadius: BorderRadius.circular(
            //             AppSize.width(value: 10.0),
            //           )),
        
            //       contentPadding: const EdgeInsets.symmetric(vertical: 16),
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //       // Add more decoration..
            //     ),
            //     hint:
            //         // controller.isLoadingCategory.value
            //         //     ? Center(
            //         //         child: CupertinoActivityIndicator(
            //         //           color: Colors.black,
            //         //         ),
            //         //       )
            //         //     :
            //         const Text(
            //       'Select Days',
            //       style: TextStyle(fontSize: 14, color: AppColors.grey600),
            //     ),
            //     items: controller.extendTimeDropDownValueList
            //         .map((item) => DropdownMenuItem<String>(
            //               value: item,
            //               child: Text(
            //                 item,
            //                 style: const TextStyle(
            //                   fontSize: 14,
            //                 ),
            //               ),
            //             ))
            //         .toList(),
            //     validator: (value) {
            //       if (value == null) {
            //         return 'Please select category';
            //       }
            //       return null;
            //     },
            //     onChanged: (value) {
            //       // // controller.selectedCategory.value = value ?? "";
        
            //       // int index = controller.categoryDropDownValueList.indexWhere((element) => element.name == value);
        
            //       // print("${index}");
            //       // controller.selectedCategoryID.value = controller.categoryDropDownValueList[index].id ?? "";
            //       // print("${controller.selectedCategoryID.value}");
            //     },
            //     onSaved: (value) {
            //       // selectedValue = value.toString();
            //     },
            //     buttonStyleData: const ButtonStyleData(
            //       padding: EdgeInsets.only(right: 8),
            //     ),
            //     iconStyleData: const IconStyleData(
            //       icon: Icon(
            //         Icons.arrow_drop_down,
            //         color: Colors.black45,
            //       ),
            //       iconSize: 24,
            //     ),
            //     dropdownStyleData: DropdownStyleData(
            //       decoration: BoxDecoration(
            //         color: AppColors.deepWhte,
            //         borderRadius: BorderRadius.circular(15),
            //       ),
            //     ),
            //     menuItemStyleData: const MenuItemStyleData(
            //       padding: EdgeInsets.symmetric(horizontal: 16),
            //     ),
            //   ),
            // ),
            const Gap(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  AppText(
                    data: "Extend Reason :",
                    fontSize: 16,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w800,
                  ),
                ],
              ),
            ),
            const Gap(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: AppInputWidgetTwo(
                  // controller: controller.emailTextEditingController,
                  hintText: "Write here..",
                  cursorColor: AppColors.primary,
                  minLines: 5,
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.primary,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  isEmail: true,
                  fillColor: AppColors.deepWhte,
                  textInputAction: TextInputAction.newline,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
            ),
        
            const Gap(height: 30),
            // const Gap(height: 50),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        Get.closeAllDialogs();
                        // deliveryNoticeDialog();
                        // Get.toNamed(AppRoutes.welcomePage);
                      },
                      child: Container(
                        width: Get.width,
                        height: AppSize.width(value: 50.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(
                            AppSize.width(value: 8),
                          ),
                        ),
                        child:
                            // controller.isLoading.value
                            //     ? const Center(
                            //         child: CircularProgressIndicator(
                            //           color: Colors.white,
                            //         ),
                            //       )
                            //     :
                            const AppText(
                          data: "Extend",
                          fontSize: 18,
                          color: AppColors.grey50,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(height: 20),
          ],
        ),
      ),
    ),
  ));
}
