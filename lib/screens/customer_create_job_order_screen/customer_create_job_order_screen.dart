import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/customer_create_job_order_screen/controllers/customer_create_job_order_screen_controller.dart';
import 'package:boolbi_app/screens/customer_create_job_order_screen/widget/admin_require_dialog_box.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_appbar/user_custom_appbar.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class CustomerCreateJobOrderScreen extends StatelessWidget {
  const CustomerCreateJobOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CustomerCreateJobOrderScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar:
                customerCustomAppBar(title: "Create Direct Service Request"),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(height: 10),
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
                        data: "Service Provider : Google",
                        color: AppColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Gap(height: 30),
                  // const Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 20),
                  //   child: Row(
                  //     children: [
                  //       AppText(
                  //         data: "Name/Company Name :",
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
                  //       border: OutlineInputBorder(
                  //           borderSide: const BorderSide(
                  //             color: AppColors.primary,
                  //           ),
                  //           borderRadius: BorderRadius.circular(10)),
                  //       // controller: controller.nameTextEditingController,
                  //       hintText: "Withdrawal Limited Company",
                  //       filled: true,
                  //       cursorColor: AppColors.primary,
                  //       fillColor: AppColors.deepWhte,
                  //       textInputAction: TextInputAction.next,
                  //       contentPadding: const EdgeInsets.symmetric(
                  //           horizontal: 20, vertical: 10),
                  //     ),
                  //   ),
                  // ),
                  // const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Project Name :",
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
                          data: "Category :",
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
                        'Select Category',
                        style:
                            TextStyle(fontSize: 14, color: AppColors.grey600),
                      ),
                      items: controller.categoryDropDownValueList
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
                          return 'Please select category';
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

                  const Gap(height: 20),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Sub Category :",
                          fontSize: 16,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ],
                    ),
                  ),
                  const Gap(height: 10),
                  // Sub Category Dropdown Section
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
                        'Select Sub Category',
                        style:
                            TextStyle(fontSize: 14, color: AppColors.grey600),
                      ),
                      items: controller.subCategoryDropDownValueList
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
                          return 'Please select sub category';
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

                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Job Location :",
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
                        hintText: "Job Address/H No./R City",
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
                          data: "My Budget :",
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
                          data: "Deadline :",
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
                    child: AppInputWidgetTwo(
                      onTap: () {
                        controller.callDateOfBirthSet();
                      },
                      controller: controller.dateOfBirthTextEditingController,
                      hintText: "26 March",
                      readOnly: true,
                      fillColor: AppColors.white,
                      // titleColor: AppColors.dark200,
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppColors.primary),
                          borderRadius: BorderRadius.circular(
                            AppSize.width(value: 10.0),
                          )),
                      errBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.error)),
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.callDateOfBirthSet();
                          },
                          icon: const Icon(
                            Icons.date_range,
                            color: AppColors.primary,
                          )),
                    ),
                  ),
                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Service Description :",
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
                  // Upload Image button
                  const Gap(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppText(
                          data: "Upload Example Photos :",
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
                    child: GestureDetector(
                      onTap: () {
                        controller.clickImagePic();
                      },
                      child: Container(
                        width: Get.width,
                        height: AppSize.width(value: 70.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primary),
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.file_upload_outlined,
                              color: AppColors.primary,
                            ),
                            Gap(width: 10),
                            AppText(
                              data: "Upload Image",
                              fontSize: 18,
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Gap(height: 20),
                  Obx(
                    () => controller.localImagePath.isNotEmpty
                        ? SizedBox(
                            height: 200,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: GridView.builder(
                                scrollDirection: Axis.vertical,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      5, // One column (horizontal scroll)
                                  childAspectRatio:
                                      1.0, // Adjust the aspect ratio as needed
                                ),
                                itemCount: controller.localImagePath.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: FittedBox(
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: FittedBox(
                                                child: AppImage(
                                                  filePath: controller
                                                      .localImagePath[index],
                                                  width:
                                                      AppSize.height(value: 60),
                                                  height:
                                                      AppSize.height(value: 60),
                                                  color: AppColors.primary,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              right: 0,
                                              top: 0,
                                              child: InkWell(
                                                onTap: () {
                                                  controller.localImagePath
                                                      .removeAt(index);
                                                },
                                                child: Container(
                                                  color: Colors.black,
                                                  child: const Icon(
                                                    Icons.close,
                                                    size: 18,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          )
                        : const SizedBox(),
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
                        adminRequireDialogBox();
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
