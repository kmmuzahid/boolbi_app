import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';

Future<void>? fillterDialogBox() {
  RxList<String> distanceDropDownValueList = <String>{
    "1 km",
    "2 km",
    "3 km",
    "4 km",
    "5 km",
    "10 km",
  }.toList().obs;
  Get.dialog(Dialog(
    insetPadding: const EdgeInsets.all(20),
    backgroundColor: AppColors.white,
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              AppText(
                data: "Location :",
                fontSize: 16,
                color: AppColors.primary,
                fontWeight: FontWeight.w800,
              ),
            ],
          ),
          const Gap(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: AppInputWidgetTwo(
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppColors.primary,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                // controller: controller.nameTextEditingController,
                hintText: "Berlin,Germany",
                filled: true,
                cursorColor: AppColors.primary,
                fillColor: AppColors.deepWhte,
                textInputAction: TextInputAction.next,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
          ),

          const Gap(height: 10),
          const Row(
            children: [
              AppText(
                data: "Distance :",
                fontSize: 16,
                color: AppColors.primary,
                fontWeight: FontWeight.w800,
              ),
            ],
          ),
          const Gap(height: 10),
          // Category Dropdown Section
          DropdownButtonFormField2<String>(
            isExpanded: true,
            decoration: InputDecoration(
              filled: true,

              fillColor: AppColors.deepWhte,
              focusColor: Colors.red,

              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.primary),
                  borderRadius: BorderRadius.circular(
                    AppSize.width(value: 10.0),
                  )),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.primary),
                  borderRadius: BorderRadius.circular(
                    AppSize.width(value: 10.0),
                  )),

              contentPadding: const EdgeInsets.symmetric(vertical: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              // Add more decoration..
            ),
            hint:
                // controller.isLoadingCategory.value
                //     ? Center(
                //         child: CupertinoActivityIndicator(
                //           color: Colors.black,
                //         ),
                //       )
                //     :
                const Text(
              'Select Distance',
              style: TextStyle(fontSize: 14, color: AppColors.grey600),
            ),
            items: distanceDropDownValueList
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ))
                .toList(),
            validator: (value) {
              if (value == null) {
                return 'Please select distance';
              }
              return null;
            },
            onChanged: (value) {
              // // controller.selectedCategory.value = value ?? "";

              // int index = controller.categoryDropDownValueList.indexWhere((element) => element.name == value);

              // print("${index}");
              // controller.selectedCategoryID.value = controller.categoryDropDownValueList[index].id ?? "";
              // print("${controller.selectedCategoryID.value}");
            },
            onSaved: (value) {
              // selectedValue = value.toString();
            },
            buttonStyleData: const ButtonStyleData(
              padding: EdgeInsets.only(right: 8),
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.black45,
              ),
              iconSize: 24,
            ),
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
                color: AppColors.deepWhte,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              padding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
          const Gap(height: 20),

          Align(
            child: GestureDetector(
              onTap: () {
                // controller.isShow.value = false;
                // controller.update();
                // controller.getFilterData();
              },
              child: Container(
                alignment: Alignment.center,
                width: AppSize.size.width,
                padding: EdgeInsets.symmetric(
                    vertical: AppSize.width(value: 15.0),
                    horizontal: AppSize.width(value: 80.0)),
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius:
                        BorderRadius.circular(AppSize.width(value: 10))),
                child: const AppText(
                  data: "Search",
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ));
  return null;
}
