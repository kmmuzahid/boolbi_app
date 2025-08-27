import 'package:boolbi_app/const/storage/get_storage.dart';
import 'package:boolbi_app/const/uitls/app_colors.dart';
import 'package:boolbi_app/routes/app_routes.dart';
import 'package:boolbi_app/screens/onboard_screen/controllers/on_board_screen_controller.dart';
import 'package:boolbi_app/screens/onboard_screen/model/on_board_model.dart';
import 'package:boolbi_app/utils/app_size.dart';
import 'package:boolbi_app/widgets/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    AppSize.size = size;
    return GetBuilder(
        init: OnBoardScreenController(),
        builder: (controller) {
          return Obx(
            () => Scaffold(
                backgroundColor: AppColors.primaryBackgroud,
                appBar: AppBar(
                  backgroundColor: AppColors.primaryBackgroud,
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${controller.selectedIndex.value + 1}",
                          style: const TextStyle(
                              color: AppColors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '/${onBoardList.length}',
                          // '/${onBoardList.length}',
                          style: const TextStyle(
                              color: AppColors.black, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  actions: [
                    controller.selectedIndex.value == 2
                        ? Container()
                        : Padding(
                            padding: const EdgeInsets.only(top: 20, right: 10),
                            child: TextButton(
                                onPressed: () {
                                  controller.pageController.animateToPage(2,
                                      duration:
                                          const Duration(milliseconds: 400),
                                      curve: Curves.linear);
                                },
                                child: const AppText(
                                  data: "Skip",
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
                body: Column(
                  children: [
                    Expanded(
                      // height: 530,
                      child: PageView.builder(
                        onPageChanged: (value) {
                          controller.selectedIndex.value = value;
                        },
                        itemCount: onBoardList.length,
                        controller: controller.pageController,
                        itemBuilder: (context, index) {
                          var data = onBoardList[index];
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 380,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(data.imageUrl))),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 30, top: 15),
                                  child: AppText(
                                    data: data.description,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 10,
                                    textAlign: TextAlign.center,
                                    fontSize: 17,
                                  )),
                            ],
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          3,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.only(left: 2, right: 2),
                                child: AnimatedContainer(
                                  height: 15,
                                  width: controller.selectedIndex.value == index
                                      ? 30
                                      : 15,
                                  duration: const Duration(milliseconds: 300),
                                  decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Stack(children: [
                                    // Center(
                                    //   child: AnimatedContainer(
                                    //     height: 8,
                                    //     width: controller.selectedIndex.value ==
                                    //             index
                                    //         ? 23
                                    //         : 8,
                                    //     duration:
                                    //         const Duration(milliseconds: 300),
                                    //     decoration: BoxDecoration(
                                    //         color:
                                    //             AppColors.white.withOpacity(.5),
                                    //         borderRadius:
                                    //             BorderRadius.circular(10)),
                                    //   ),
                                    // ),
                                    Center(
                                      child: AnimatedContainer(
                                        height: 5,
                                        width: controller.selectedIndex.value ==
                                                index
                                            ? 20
                                            : 5,
                                        duration:
                                            const Duration(milliseconds: 300),
                                        decoration: BoxDecoration(
                                            color: AppColors.primary,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                    ),
                                  ]),
                                ),
                              )),
                    ),
                    const SizedBox(height: 30),
                    if (controller.selectedIndex.value == 2)
                      SizedBox(
                          height: 50,
                          width: 250,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 5,
                                  backgroundColor: AppColors.primary,
                                  foregroundColor: AppColors.black),
                              onPressed: () {
                                AppStorage().setOnBoardValue("onBoard");
                                Get.toNamed(AppRoutes.chooseAuthScreen);
                              },
                              child: const AppText(
                                  data: "Get Started >>",
                                  fontWeight: FontWeight.w900,
                                  color: AppColors.white,
                                  fontSize: 16)))
                    else
                      SizedBox(
                          height: 50,
                          width: 250,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 5,
                                  backgroundColor: AppColors.primary,
                                  foregroundColor: AppColors.black),
                              onPressed: () {
                                controller.pageController.nextPage(
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.linear);
                              },
                              child: const Text("Next",
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16)))),
                    const SizedBox(height: 50),
                  ],
                )),
          );
        });
  }
}
