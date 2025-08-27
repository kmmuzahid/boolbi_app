import 'package:boolbi_app/const/images/app_asset_icons.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/screens/provider_view_all_recommended_project_post_screen/controllers/provider_view_all_recommended_project_post_screen_controller.dart';
import 'package:boolbi_app/screens/provider_view_all_recommended_project_post_screen/widget/provider_recommended_see_all_card.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/utils/gap.dart';
import 'package:boolbi_app/widgets/app_image/app_image.dart';
import 'package:boolbi_app/widgets/inputs/app_input_widget_two.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_appbar/user_custom_appbar.dart';

class ProviderViewAllRecommendedProjectPostScreen extends StatelessWidget {
  const ProviderViewAllRecommendedProjectPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: ProviderViewAllRecommendedProjectPostScreenController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.primaryBackgroud,
            appBar: customerCustomAppBar(title: "All Recommended Project Post"),
            body: Column(
              children: [
                // Container(
                //   decoration: const BoxDecoration(
                //       color: AppColors.primaryBackgroud,
                //       borderRadius: BorderRadius.only(
                //           bottomLeft: Radius.circular(10),
                //           bottomRight: Radius.circular(10))),
                //   child: Padding(
                //     padding: EdgeInsets.symmetric(
                //         horizontal: AppSize.width(value: 20),
                //         vertical: AppSize.size.height * 0.020),
                //     child: Row(
                //       children: [
                //         Expanded(
                //           child: Material(
                //             elevation: 1,
                //             borderRadius: BorderRadius.circular(5),
                //             child: AppInputWidgetTwo(
                //               // onFieldSubmitted: controller.fieldSubmitted,
                //               // controller: controller.textEditingController,
                //               // onChanged: controller.callSearchFunction,
                //               // focusNode: controller.focusNode,
                //               onTap: () {
                //                 // controller.isShow.value = false;
                //               },
                //               hintText: "Search Here...",
                //               filled: true,
                //               maxLines: 1,
                //               cursorColor: AppColors.primary,
                //               fillColor: AppColors.white,
                //               textInputAction: TextInputAction.search,
                //               contentPadding: const EdgeInsets.all(0),
                //               prefix: Align(
                //                 child: AppImage(
                //                   path: AssetsIconsPath.search,
                //                   height: AppSize.size.height * 0.025,
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ),
                //         // const Gap(width: 10),
                //         // Material(
                //         //   elevation: 1,
                //         //   borderRadius: BorderRadius.circular(100),
                //         //   child: GestureDetector(
                //         //     onTap: () {
                //         //       // controller.filterClick();
                //         //     },
                //         //     child: Container(
                //         //       width: AppSize.size.width * 0.12,
                //         //       decoration: BoxDecoration(
                //         //           color: AppColors.white,
                //         //           borderRadius: BorderRadius.circular(100)),
                //         //       padding:
                //         //           EdgeInsets.all(AppSize.size.height * 0.012),
                //         //       child: const AppImage(
                //         //         path: AssetsIconsPath.filter,
                //         //       ),
                //         //     ),
                //         //   ),
                //         // )
                //       ],
                //     ),
                //   ),
                // ),
                // const Gap(height: 0),
                // Padding(
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       const Flexible(
                //         child: AppText(
                //           data: "Based On You Recent Search",
                //           color: AppColors.primary,
                //           fontSize: 15,
                //           fontWeight: FontWeight.w700,
                //           overflow: TextOverflow.ellipsis,
                //           maxLines: 2,
                //         ),
                //       ),
                //       Container(
                //         height: 45, // reduced height
                //         width: 110, // reduced width
                //         alignment: Alignment.center,
                //         child: DropdownButtonFormField2<String>(
                //           decoration: InputDecoration(
                //             filled: true,
                //             fillColor: AppColors.deepWhte,
                //             focusColor: Colors.red,
                //             focusedBorder: OutlineInputBorder(
                //               borderSide: const BorderSide(
                //                   color: AppColors.primary, width: 0.5),
                //               borderRadius: BorderRadius.circular(10),
                //             ),
                //             enabledBorder: OutlineInputBorder(
                //               borderSide: const BorderSide(
                //                   color: AppColors.primary, width: 0.5),
                //               borderRadius: BorderRadius.circular(10),
                //             ),
                //             border: OutlineInputBorder(
                //               borderRadius: BorderRadius.circular(10),
                //             ),
                //           ),
                //           hint: const Text(
                //             'Sort',
                //             style: TextStyle(
                //                 fontSize: 12,
                //                 color: AppColors.grey600), // smaller font
                //           ),
                //           items: controller.sortListDropDownValueList
                //               .map((item) => DropdownMenuItem<String>(
                //                     value: item,
                //                     child: Text(
                //                       item,
                //                       style: const TextStyle(
                //                         fontSize: 12, // smaller font
                //                       ),
                //                     ),
                //                   ))
                //               .toList(),
                //           validator: (value) {
                //             if (value == null) {
                //               return 'Please select sort';
                //             }
                //             return null;
                //           },
                //           onChanged: (value) {},
                //           onSaved: (value) {},
                //           buttonStyleData: const ButtonStyleData(),
                //           iconStyleData: const IconStyleData(
                //             icon: Icon(
                //               Icons.swap_vert,
                //               color: Colors.black45,
                //               size: 18, // smaller icon size
                //             ),
                //           ),
                //           dropdownStyleData: DropdownStyleData(
                //             decoration: BoxDecoration(
                //               color: AppColors.deepWhte,
                //               borderRadius: BorderRadius.circular(15),
                //             ),
                //           ),
                //           menuItemStyleData: const MenuItemStyleData(
                //             padding: EdgeInsets.symmetric(
                //                 horizontal: 10), // reduced padding
                //           ),
                //         ),
                //       ),
                //       Material(
                //         elevation: 1,
                //         borderRadius: BorderRadius.circular(10),
                //         child: GestureDetector(
                //           onTap: () {
                //             controller.isShow.value = !controller.isShow.value;
                //             controller.update();
                //             // controller.filterClick();
                //           },
                //           child: Container(
                //             width: AppSize.size.width * 0.12,
                //             decoration: BoxDecoration(
                //                 color: AppColors.white,
                //                 borderRadius: BorderRadius.circular(10)),
                //             padding:
                //                 EdgeInsets.all(AppSize.size.height * 0.012),
                //             child: const AppImage(
                //               path: AssetsIconsPath.filter,
                //             ),
                //           ),
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                Gap(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppText(
                        data: "See All Projects Post",
                        fontSize: 18,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w800,
                      ),
                      const Gap(width: 10),
                      Material(
                        elevation: 1,
                        borderRadius: BorderRadius.circular(100),
                        child: GestureDetector(
                          onTap: () {
                            controller.isShow.value = !controller.isShow.value;
                            controller.update();
                            // controller.filterClick();
                          },
                          child: Container(
                            width: AppSize.size.width * 0.12,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(100)),
                            padding:
                                EdgeInsets.all(AppSize.size.height * 0.012),
                            child: const AppImage(
                              path: AssetsIconsPath.filter,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Gap(
                  height: 20,
                ),
                // AnimatedSize(
                //   duration: const Duration(milliseconds: 300),
                //   curve: Curves.linear,
                //   child: Padding(
                //     padding: EdgeInsets.only(
                //         left: controller.isShow.value ? 20 : 0,
                //         right: controller.isShow.value ? 20 : 0,
                //         bottom: controller.isShow.value ? 20 : 0,
                //         top: controller.isShow.value ? 0 : 0),
                //     child: Material(
                //       elevation: 1,
                //       borderRadius: BorderRadius.circular(15),
                //       child: Container(
                //         height: controller.isShow.value
                //             ? AppSize.size.height * 0.52
                //             : 0,
                //         width: AppSize.size.width,
                //         // alignment: Alignment.center,
                //         decoration: BoxDecoration(
                //           color: AppColors.white,
                //           borderRadius: BorderRadius.circular(15),
                //         ),
                //         child: Padding(
                //           padding: const EdgeInsets.all(20),
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               const Row(
                //                 children: [
                //                   AppText(
                //                     data: "Category :",
                //                     fontSize: 16,
                //                     color: AppColors.primary,
                //                     fontWeight: FontWeight.w800,
                //                   ),
                //                 ],
                //               ),
                //               const Gap(height: 10),
                //               // Category Dropdown Section
                //               DropdownButtonFormField2<String>(
                //                 isExpanded: true,
                //                 decoration: InputDecoration(
                //                   filled: true,

                //                   fillColor: AppColors.deepWhte,
                //                   focusColor: Colors.red,

                //                   focusedBorder: OutlineInputBorder(
                //                       borderSide: const BorderSide(
                //                           color: AppColors.primary),
                //                       borderRadius: BorderRadius.circular(
                //                         AppSize.width(value: 10.0),
                //                       )),
                //                   enabledBorder: OutlineInputBorder(
                //                       borderSide: const BorderSide(
                //                           color: AppColors.primary),
                //                       borderRadius: BorderRadius.circular(
                //                         AppSize.width(value: 10.0),
                //                       )),

                //                   contentPadding:
                //                       const EdgeInsets.symmetric(vertical: 16),
                //                   border: OutlineInputBorder(
                //                     borderRadius: BorderRadius.circular(10),
                //                   ),
                //                   // Add more decoration..
                //                 ),
                //                 hint:
                //                     // controller.isLoadingCategory.value
                //                     //     ? Center(
                //                     //         child: CupertinoActivityIndicator(
                //                     //           color: Colors.black,
                //                     //         ),
                //                     //       )
                //                     //     :
                //                     const Text(
                //                   'Select Category',
                //                   style: TextStyle(
                //                       fontSize: 14, color: AppColors.grey600),
                //                 ),
                //                 items: controller.categoryDropDownValueList
                //                     .map((item) => DropdownMenuItem<String>(
                //                           value: item,
                //                           child: Text(
                //                             item,
                //                             style: const TextStyle(
                //                               fontSize: 14,
                //                             ),
                //                           ),
                //                         ))
                //                     .toList(),
                //                 validator: (value) {
                //                   if (value == null) {
                //                     return 'Please select category';
                //                   }
                //                   return null;
                //                 },
                //                 onChanged: (value) {
                //                   // // controller.selectedCategory.value = value ?? "";

                //                   // int index = controller.categoryDropDownValueList.indexWhere((element) => element.name == value);

                //                   // print("${index}");
                //                   // controller.selectedCategoryID.value = controller.categoryDropDownValueList[index].id ?? "";
                //                   // print("${controller.selectedCategoryID.value}");
                //                 },
                //                 onSaved: (value) {
                //                   // selectedValue = value.toString();
                //                 },
                //                 buttonStyleData: const ButtonStyleData(
                //                   padding: EdgeInsets.only(right: 8),
                //                 ),
                //                 iconStyleData: const IconStyleData(
                //                   icon: Icon(
                //                     Icons.arrow_drop_down,
                //                     color: Colors.black45,
                //                   ),
                //                   iconSize: 24,
                //                 ),
                //                 dropdownStyleData: DropdownStyleData(
                //                   decoration: BoxDecoration(
                //                     color: AppColors.deepWhte,
                //                     borderRadius: BorderRadius.circular(15),
                //                   ),
                //                 ),
                //                 menuItemStyleData: const MenuItemStyleData(
                //                   padding: EdgeInsets.symmetric(horizontal: 16),
                //                 ),
                //               ),

                //               const Gap(height: 10),

                //               const Row(
                //                 children: [
                //                   AppText(
                //                     data: "Sub Category :",
                //                     fontSize: 16,
                //                     color: AppColors.primary,
                //                     fontWeight: FontWeight.w800,
                //                   ),
                //                 ],
                //               ),
                //               const Gap(height: 10),
                //               // Sub Category Dropdown Section
                //               DropdownButtonFormField2<String>(
                //                 isExpanded: true,
                //                 decoration: InputDecoration(
                //                   filled: true,

                //                   fillColor: AppColors.deepWhte,
                //                   focusColor: Colors.red,

                //                   focusedBorder: OutlineInputBorder(
                //                       borderSide: const BorderSide(
                //                           color: AppColors.primary),
                //                       borderRadius: BorderRadius.circular(
                //                         AppSize.width(value: 10.0),
                //                       )),
                //                   enabledBorder: OutlineInputBorder(
                //                       borderSide: const BorderSide(
                //                           color: AppColors.primary),
                //                       borderRadius: BorderRadius.circular(
                //                         AppSize.width(value: 10.0),
                //                       )),

                //                   contentPadding:
                //                       const EdgeInsets.symmetric(vertical: 16),
                //                   border: OutlineInputBorder(
                //                     borderRadius: BorderRadius.circular(10),
                //                   ),
                //                   // Add more decoration..
                //                 ),
                //                 hint:
                //                     // controller.isLoadingCategory.value
                //                     //     ? Center(
                //                     //         child: CupertinoActivityIndicator(
                //                     //           color: Colors.black,
                //                     //         ),
                //                     //       )
                //                     //     :
                //                     const Text(
                //                   'Select Sub Category',
                //                   style: TextStyle(
                //                       fontSize: 14, color: AppColors.grey600),
                //                 ),
                //                 items: controller.subCategoryDropDownValueList
                //                     .map((item) => DropdownMenuItem<String>(
                //                           value: item,
                //                           child: Text(
                //                             item,
                //                             style: const TextStyle(
                //                               fontSize: 14,
                //                             ),
                //                           ),
                //                         ))
                //                     .toList(),
                //                 validator: (value) {
                //                   if (value == null) {
                //                     return 'Please select sub category';
                //                   }
                //                   return null;
                //                 },
                //                 onChanged: (value) {
                //                   // // controller.selectedCategory.value = value ?? "";

                //                   // int index = controller.categoryDropDownValueList.indexWhere((element) => element.name == value);

                //                   // print("${index}");
                //                   // controller.selectedCategoryID.value = controller.categoryDropDownValueList[index].id ?? "";
                //                   // print("${controller.selectedCategoryID.value}");
                //                 },
                //                 onSaved: (value) {
                //                   // selectedValue = value.toString();
                //                 },
                //                 buttonStyleData: const ButtonStyleData(
                //                   padding: EdgeInsets.only(right: 8),
                //                 ),
                //                 iconStyleData: const IconStyleData(
                //                   icon: Icon(
                //                     Icons.arrow_drop_down,
                //                     color: Colors.black45,
                //                   ),
                //                   iconSize: 24,
                //                 ),
                //                 dropdownStyleData: DropdownStyleData(
                //                   decoration: BoxDecoration(
                //                     color: AppColors.deepWhte,
                //                     borderRadius: BorderRadius.circular(15),
                //                   ),
                //                 ),
                //                 menuItemStyleData: const MenuItemStyleData(
                //                   padding: EdgeInsets.symmetric(horizontal: 16),
                //                 ),
                //               ),
                //               const Gap(height: 10),

                //               // const Row(
                //               //   children: [
                //               //     AppText(
                //               //       data: "Service Provider Rating :",
                //               //       fontSize: 16,
                //               //       color: AppColors.primary,
                //               //       fontWeight: FontWeight.w800,
                //               //     ),
                //               //   ],
                //               // ),
                //               // const Gap(height: 10),
                //               // // Sub Category Dropdown Section
                //               // DropdownButtonFormField2<String>(
                //               //   isExpanded: true,
                //               //   decoration: InputDecoration(
                //               //     filled: true,

                //               //     fillColor: AppColors.deepWhte,
                //               //     focusColor: Colors.red,

                //               //     focusedBorder: OutlineInputBorder(
                //               //         borderSide: const BorderSide(
                //               //             color: AppColors.primary),
                //               //         borderRadius: BorderRadius.circular(
                //               //           AppSize.width(value: 10.0),
                //               //         )),
                //               //     enabledBorder: OutlineInputBorder(
                //               //         borderSide: const BorderSide(
                //               //             color: AppColors.primary),
                //               //         borderRadius: BorderRadius.circular(
                //               //           AppSize.width(value: 10.0),
                //               //         )),

                //               //     contentPadding:
                //               //         const EdgeInsets.symmetric(vertical: 16),
                //               //     border: OutlineInputBorder(
                //               //       borderRadius: BorderRadius.circular(10),
                //               //     ),
                //               //     // Add more decoration..
                //               //   ),
                //               //   hint:
                //               //       // controller.isLoadingCategory.value
                //               //       //     ? Center(
                //               //       //         child: CupertinoActivityIndicator(
                //               //       //           color: Colors.black,
                //               //       //         ),
                //               //       //       )
                //               //       //     :
                //               //       const Text(
                //               //     'Select Provider Ratings',
                //               //     style: TextStyle(
                //               //         fontSize: 14, color: AppColors.grey600),
                //               //   ),
                //               //   items: controller.ratingDropDownValueList
                //               //       .map((item) => DropdownMenuItem<String>(
                //               //             value: item,
                //               //             child: Text(
                //               //               item,
                //               //               style: const TextStyle(
                //               //                 fontSize: 14,
                //               //               ),
                //               //             ),
                //               //           ))
                //               //       .toList(),
                //               //   validator: (value) {
                //               //     if (value == null) {
                //               //       return 'Please select ratings';
                //               //     }
                //               //     return null;
                //               //   },
                //               //   onChanged: (value) {
                //               //     // // controller.selectedCategory.value = value ?? "";

                //               //     // int index = controller.categoryDropDownValueList.indexWhere((element) => element.name == value);

                //               //     // print("${index}");
                //               //     // controller.selectedCategoryID.value = controller.categoryDropDownValueList[index].id ?? "";
                //               //     // print("${controller.selectedCategoryID.value}");
                //               //   },
                //               //   onSaved: (value) {
                //               //     // selectedValue = value.toString();
                //               //   },
                //               //   buttonStyleData: const ButtonStyleData(
                //               //     padding: EdgeInsets.only(right: 8),
                //               //   ),
                //               //   iconStyleData: const IconStyleData(
                //               //     icon: Icon(
                //               //       Icons.arrow_drop_down,
                //               //       color: Colors.black45,
                //               //     ),
                //               //     iconSize: 24,
                //               //   ),
                //               //   dropdownStyleData: DropdownStyleData(
                //               //     decoration: BoxDecoration(
                //               //       color: AppColors.deepWhte,
                //               //       borderRadius: BorderRadius.circular(15),
                //               //     ),
                //               //   ),
                //               //   menuItemStyleData: const MenuItemStyleData(
                //               //     padding: EdgeInsets.symmetric(horizontal: 16),
                //               //   ),
                //               // ),

                //               // const Gap(height: 10),
                //               // const Row(
                //               //   children: [
                //               //     AppText(
                //               //       data: "Location :",
                //               //       fontSize: 16,
                //               //       color: AppColors.primary,
                //               //       fontWeight: FontWeight.w800,
                //               //     ),
                //               //   ],
                //               // ),
                //               // const Gap(height: 10),
                //               // ClipRRect(
                //               //   borderRadius: BorderRadius.circular(10),
                //               //   child: AppInputWidgetTwo(
                //               //     // controller: controller.emailTextEditingController,
                //               //     hintText: "Enter Location...",
                //               //     cursorColor: AppColors.primary,
                //               //     border: OutlineInputBorder(
                //               //         borderSide: const BorderSide(
                //               //           color: AppColors.primary,
                //               //         ),
                //               //         borderRadius: BorderRadius.circular(10)),
                //               //     filled: true,
                //               //     // isEmail: true,
                //               //     fillColor: AppColors.deepWhte,
                //               //     textInputAction: TextInputAction.next,
                //               //     contentPadding: const EdgeInsets.symmetric(
                //               //         horizontal: 20, vertical: 10),
                //               //   ),
                //               // ),
                //               const Gap(height: 10),
                //               const Row(
                //                 children: [
                //                   AppText(
                //                     data: "Distance :",
                //                     fontSize: 16,
                //                     color: AppColors.primary,
                //                     fontWeight: FontWeight.w800,
                //                   ),
                //                 ],
                //               ),
                //               const Gap(height: 10),
                //               // Category Dropdown Section
                //               DropdownButtonFormField2<String>(
                //                 isExpanded: true,
                //                 decoration: InputDecoration(
                //                   filled: true,

                //                   fillColor: AppColors.deepWhte,
                //                   focusColor: Colors.red,

                //                   focusedBorder: OutlineInputBorder(
                //                       borderSide: const BorderSide(
                //                           color: AppColors.primary),
                //                       borderRadius: BorderRadius.circular(
                //                         AppSize.width(value: 10.0),
                //                       )),
                //                   enabledBorder: OutlineInputBorder(
                //                       borderSide: const BorderSide(
                //                           color: AppColors.primary),
                //                       borderRadius: BorderRadius.circular(
                //                         AppSize.width(value: 10.0),
                //                       )),

                //                   contentPadding:
                //                       const EdgeInsets.symmetric(vertical: 16),
                //                   border: OutlineInputBorder(
                //                     borderRadius: BorderRadius.circular(10),
                //                   ),
                //                   // Add more decoration..
                //                 ),
                //                 hint:
                //                     // controller.isLoadingCategory.value
                //                     //     ? Center(
                //                     //         child: CupertinoActivityIndicator(
                //                     //           color: Colors.black,
                //                     //         ),
                //                     //       )
                //                     //     :
                //                     const Text(
                //                   'Select Distance',
                //                   style: TextStyle(
                //                       fontSize: 14, color: AppColors.grey600),
                //                 ),
                //                 items: controller.distanceDropDownValueList
                //                     .map((item) => DropdownMenuItem<String>(
                //                           value: item,
                //                           child: Text(
                //                             item,
                //                             style: const TextStyle(
                //                               fontSize: 14,
                //                             ),
                //                           ),
                //                         ))
                //                     .toList(),
                //                 validator: (value) {
                //                   if (value == null) {
                //                     return 'Please select distance';
                //                   }
                //                   return null;
                //                 },
                //                 onChanged: (value) {
                //                   // // controller.selectedCategory.value = value ?? "";

                //                   // int index = controller.categoryDropDownValueList.indexWhere((element) => element.name == value);

                //                   // print("${index}");
                //                   // controller.selectedCategoryID.value = controller.categoryDropDownValueList[index].id ?? "";
                //                   // print("${controller.selectedCategoryID.value}");
                //                 },
                //                 onSaved: (value) {
                //                   // selectedValue = value.toString();
                //                 },
                //                 buttonStyleData: const ButtonStyleData(
                //                   padding: EdgeInsets.only(right: 8),
                //                 ),
                //                 iconStyleData: const IconStyleData(
                //                   icon: Icon(
                //                     Icons.arrow_drop_down,
                //                     color: Colors.black45,
                //                   ),
                //                   iconSize: 24,
                //                 ),
                //                 dropdownStyleData: DropdownStyleData(
                //                   decoration: BoxDecoration(
                //                     color: AppColors.deepWhte,
                //                     borderRadius: BorderRadius.circular(15),
                //                   ),
                //                 ),
                //                 menuItemStyleData: const MenuItemStyleData(
                //                   padding: EdgeInsets.symmetric(horizontal: 16),
                //                 ),
                //               ),
                //               const Gap(height: 20),

                //               Align(
                //                 child: GestureDetector(
                //                   onTap: () {
                //                     controller.isShow.value = false;
                //                     controller.update();
                //                     // controller.getFilterData();
                //                   },
                //                   child: Container(
                //                     padding: EdgeInsets.symmetric(
                //                         vertical: AppSize.width(value: 15.0),
                //                         horizontal: AppSize.width(value: 80.0)),
                //                     decoration: BoxDecoration(
                //                         color: AppColors.primary,
                //                         borderRadius: BorderRadius.circular(
                //                             AppSize.width(value: 10))),
                //                     child: const AppText(
                //                       data: "Search",
                //                       color: AppColors.white,
                //                       fontWeight: FontWeight.w500,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                AnimatedSize(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: controller.isShow.value ? 20 : 0,
                        right: controller.isShow.value ? 20 : 0,
                        bottom: controller.isShow.value ? 20 : 0,
                        top: controller.isShow.value ? 0 : 0),
                    child: Material(
                      elevation: 1,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: controller.isShow.value
                            ? AppSize.size.height * 0.52
                            : 0,
                        width: AppSize.size.width,
                        // alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  AppText(
                                    data: "Category :",
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
                                      borderSide: const BorderSide(
                                          color: AppColors.primary),
                                      borderRadius: BorderRadius.circular(
                                        AppSize.width(value: 10.0),
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColors.primary),
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
                                  style: TextStyle(
                                      fontSize: 14, color: AppColors.grey600),
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

                              const Gap(height: 10),

                              const Row(
                                children: [
                                  AppText(
                                    data: "Sub Category :",
                                    fontSize: 16,
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ],
                              ),
                              const Gap(height: 10),
                              // Sub Category Dropdown Section
                              DropdownButtonFormField2<String>(
                                isExpanded: true,
                                decoration: InputDecoration(
                                  filled: true,

                                  fillColor: AppColors.deepWhte,
                                  focusColor: Colors.red,

                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColors.primary),
                                      borderRadius: BorderRadius.circular(
                                        AppSize.width(value: 10.0),
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColors.primary),
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
                                  style: TextStyle(
                                      fontSize: 14, color: AppColors.grey600),
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
                              const Gap(height: 10),

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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: AppInputWidgetTwo(
                                    border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: AppColors.primary,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    // controller: controller.nameTextEditingController,
                                    hintText: "Berlin,Germany",
                                    filled: true,
                                    cursorColor: AppColors.primary,
                                    fillColor: AppColors.deepWhte,
                                    textInputAction: TextInputAction.next,
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                  ),
                                ),
                              ),

                              // const Row(
                              //   children: [
                              //     AppText(
                              //       data: "Service Provider Rating :",
                              //       fontSize: 16,
                              //       color: AppColors.primary,
                              //       fontWeight: FontWeight.w800,
                              //     ),
                              //   ],
                              // ),
                              // const Gap(height: 10),
                              // // Sub Category Dropdown Section
                              // DropdownButtonFormField2<String>(
                              //   isExpanded: true,
                              //   decoration: InputDecoration(
                              //     filled: true,

                              //     fillColor: AppColors.deepWhte,
                              //     focusColor: Colors.red,

                              //     focusedBorder: OutlineInputBorder(
                              //         borderSide: const BorderSide(
                              //             color: AppColors.primary),
                              //         borderRadius: BorderRadius.circular(
                              //           AppSize.width(value: 10.0),
                              //         )),
                              //     enabledBorder: OutlineInputBorder(
                              //         borderSide: const BorderSide(
                              //             color: AppColors.primary),
                              //         borderRadius: BorderRadius.circular(
                              //           AppSize.width(value: 10.0),
                              //         )),

                              //     contentPadding:
                              //         const EdgeInsets.symmetric(vertical: 16),
                              //     border: OutlineInputBorder(
                              //       borderRadius: BorderRadius.circular(10),
                              //     ),
                              //     // Add more decoration..
                              //   ),
                              //   hint:
                              //       // controller.isLoadingCategory.value
                              //       //     ? Center(
                              //       //         child: CupertinoActivityIndicator(
                              //       //           color: Colors.black,
                              //       //         ),
                              //       //       )
                              //       //     :
                              //       const Text(
                              //     'Select Provider Ratings',
                              //     style: TextStyle(
                              //         fontSize: 14, color: AppColors.grey600),
                              //   ),
                              //   items: controller.ratingDropDownValueList
                              //       .map((item) => DropdownMenuItem<String>(
                              //             value: item,
                              //             child: Text(
                              //               item,
                              //               style: const TextStyle(
                              //                 fontSize: 14,
                              //               ),
                              //             ),
                              //           ))
                              //       .toList(),
                              //   validator: (value) {
                              //     if (value == null) {
                              //       return 'Please select ratings';
                              //     }
                              //     return null;
                              //   },
                              //   onChanged: (value) {
                              //     // // controller.selectedCategory.value = value ?? "";

                              //     // int index = controller.categoryDropDownValueList.indexWhere((element) => element.name == value);

                              //     // print("${index}");
                              //     // controller.selectedCategoryID.value = controller.categoryDropDownValueList[index].id ?? "";
                              //     // print("${controller.selectedCategoryID.value}");
                              //   },
                              //   onSaved: (value) {
                              //     // selectedValue = value.toString();
                              //   },
                              //   buttonStyleData: const ButtonStyleData(
                              //     padding: EdgeInsets.only(right: 8),
                              //   ),
                              //   iconStyleData: const IconStyleData(
                              //     icon: Icon(
                              //       Icons.arrow_drop_down,
                              //       color: Colors.black45,
                              //     ),
                              //     iconSize: 24,
                              //   ),
                              //   dropdownStyleData: DropdownStyleData(
                              //     decoration: BoxDecoration(
                              //       color: AppColors.deepWhte,
                              //       borderRadius: BorderRadius.circular(15),
                              //     ),
                              //   ),
                              //   menuItemStyleData: const MenuItemStyleData(
                              //     padding: EdgeInsets.symmetric(horizontal: 16),
                              //   ),
                              // ),

                              // const Gap(height: 10),
                              // const Row(
                              //   children: [
                              //     AppText(
                              //       data: "Location :",
                              //       fontSize: 16,
                              //       color: AppColors.primary,
                              //       fontWeight: FontWeight.w800,
                              //     ),
                              //   ],
                              // ),
                              // const Gap(height: 10),
                              // ClipRRect(
                              //   borderRadius: BorderRadius.circular(10),
                              //   child: AppInputWidgetTwo(
                              //     // controller: controller.emailTextEditingController,
                              //     hintText: "Enter Location...",
                              //     cursorColor: AppColors.primary,
                              //     border: OutlineInputBorder(
                              //         borderSide: const BorderSide(
                              //           color: AppColors.primary,
                              //         ),
                              //         borderRadius: BorderRadius.circular(10)),
                              //     filled: true,
                              //     // isEmail: true,
                              //     fillColor: AppColors.deepWhte,
                              //     textInputAction: TextInputAction.next,
                              //     contentPadding: const EdgeInsets.symmetric(
                              //         horizontal: 20, vertical: 10),
                              //   ),
                              // ),
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
                                      borderSide: const BorderSide(
                                          color: AppColors.primary),
                                      borderRadius: BorderRadius.circular(
                                        AppSize.width(value: 10.0),
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColors.primary),
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
                                  'Select Distance',
                                  style: TextStyle(
                                      fontSize: 14, color: AppColors.grey600),
                                ),
                                items: controller.distanceDropDownValueList
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
                                    controller.isShow.value = false;
                                    controller.update();
                                    // controller.getFilterData();
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: AppSize.width(value: 15.0),
                                        horizontal: AppSize.width(value: 80.0)),
                                    decoration: BoxDecoration(
                                        color: AppColors.primary,
                                        borderRadius: BorderRadius.circular(
                                            AppSize.width(value: 10))),
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
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child:
                      //  controller.isLoading.value
                      //     ? const Center(child: CircularProgressIndicator(color: Colors.black))
                      //     :
                      Padding(
                    padding: const EdgeInsets.all(0),
                    child: ListView.builder(
                      controller: controller.scrollController,
                      itemCount: 20,
                      // itemCount: controller.orderHistoryList.length + 1,
                      itemBuilder: (context, index) {
                        // if (index == controller.orderHistoryList.length) {
                        //   return controller.isLoadingMore.value
                        //       ? const Padding(
                        //           padding: EdgeInsets.all(8.0),
                        //           child: Center(child: CircularProgressIndicator()),
                        //         )
                        //       : const SizedBox();
                        // }

                        // var data = controller.orderHistoryList[index];
                        return const ProviderRecommendedSeeAllCard();
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
