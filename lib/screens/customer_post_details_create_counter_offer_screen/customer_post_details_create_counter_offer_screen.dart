import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/customer_create_counter_offer_screen/widget/customer_admin_require_dialog_box.dart';
import 'package:boolbi_app/screens/customer_post_details_create_counter_offer_screen/controllers/customer_post_details_create_counter_offer_screen_controller.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_appbar/user_custom_appbar.dart';

class CustomerPostDetailsCreateCounterOfferScreen extends StatelessWidget {
  const CustomerPostDetailsCreateCounterOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerPostDetailsCreateCounterOfferScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "Create Counter Offer"),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(height: 30),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Project Start Date :",
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
                        suffixIcon: const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.calendar_month,
                            color: AppColors.primary,
                          ),
                        ),
                        controller: controller.startDateTextEditingController,
                        onTap: () {
                          controller.callStartTimeSet();
                        },
                        // controller: controller.emailTextEditingController,
                        hintText: "Select Start Date",
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
                  const Gap(height: 10),
                  // if (controller.startTimeTextEditingController.text != "")
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Project End Date :",
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
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: AppInputWidgetTwo(
                        suffixIcon: const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.calendar_month,
                            color: AppColors.primary,
                          ),
                        ),
                        controller: controller.endDateTextEditingController,
                        onTap: () {
                          controller.callEndTimeSet();
                        },
                        // controller: controller.emailTextEditingController,
                        hintText: "Select End Date",
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
                  const Gap(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Offer Validity time :",
                          fontSize: 16,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 10),
                  // Category Dropdown Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: DropdownButtonFormField2<String>(
                      isExpanded: true,
                      decoration: InputDecoration(
                        filled: true,

                        fillColor: AppColors.deepWhte,
                        focusColor: Colors.red,

                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: AppColors.primary),
                            borderRadius: BorderRadius.circular(
                              AppSize.width(value: 10.0),
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: AppColors.primary),
                            borderRadius: BorderRadius.circular(
                              AppSize.width(value: 10.0),
                            )),

                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 16),
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
                        'Select Days',
                        style:
                            TextStyle(fontSize: 14, color: AppColors.grey600),
                      ),
                      items: controller.offerValidityTimeDropDownValueList
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
                          return 'Please select days';
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
                  ),
                  // const Gap(height: 20),
                  // const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 20),
                  //   child: Row(
                  //     children: [
                  //       AppText(
                  //         data: "My Services :",
                  //         fontSize: 16,
                  //         color: AppColors.primary,
                  //         fontWeight: FontWeight.w800,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // const Gap(height: 10),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20),
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(10),
                  //     child: AppInputWidgetTwo(
                  //       minLines: 3,
                  //       // controller: controller.emailTextEditingController,
                  //       hintText: "Write here..",
                  //       cursorColor: AppColors.primary,
                  //       border: OutlineInputBorder(
                  //           borderSide: const BorderSide(
                  //             color: AppColors.primary,
                  //           ),
                  //           borderRadius: BorderRadius.circular(10)),
                  //       filled: true,
                  //       isEmail: true,
                  //       fillColor: AppColors.deepWhte,
                  //       textInputAction: TextInputAction.newline,
                  //       contentPadding: const EdgeInsets.symmetric(
                  //           horizontal: 20, vertical: 10),
                  //     ),
                  //   ),
                  // ),

                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Costs :",
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
                        hintText: "\$2000",
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
                        keyboardType: TextInputType.phone,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                    ),
                  ),
                  const Gap(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      alignment: Alignment.center,
                      width: AppSize.size.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xffEDEDEF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const AppText(
                        data:
                            "The total cost is outlined below and includes a 5% service fee charged by Boolbi upon acceptance of the offer.'. Calculate from the cost the 'Total Costs and show it",
                        color: AppColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  // const Gap(height: 10),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(
                  //       horizontal: 20, vertical: 10),
                  //   child: Container(
                  //       width: Get.width,
                  //       height: AppSize.width(value: 70.0),
                  //       alignment: Alignment.center,
                  //       padding: EdgeInsets.all(5),
                  //       decoration: BoxDecoration(
                  //           border: Border.all(color: AppColors.primary),
                  //           color: AppColors.white,
                  //           borderRadius: BorderRadius.circular(10)),
                  //       child: GridView.builder(
                  //         scrollDirection: Axis.horizontal,
                  //         gridDelegate:
                  //             SliverGridDelegateWithFixedCrossAxisCount(
                  //                 crossAxisCount: 10),
                  //         itemBuilder: (context, index) {
                  //           return Padding(
                  //             padding: const EdgeInsets.all(2),
                  //             child: Container(
                  //               color: Colors.amber,
                  //             ),
                  //           );
                  //         },
                  //       )),
                  // ),

                  ///////// Button
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GestureDetector(
                      onTap: () {
                        customerAdminRequireDialogBox();
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
                          data: "Send",
                          fontSize: 18,
                          color: AppColors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
