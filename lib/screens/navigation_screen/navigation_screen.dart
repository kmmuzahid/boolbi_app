import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boolbi_app/enum_types/guest_user_type.dart';
import 'package:boolbi_app/enum_types/app_user_type.dart';
import 'package:boolbi_app/screens/navigation_screen/controllers/navigation_screen_controller.dart';
import 'package:boolbi_app/screens/navigation_screen/screens/provider_navigation_screen.dart';
import 'package:boolbi_app/screens/navigation_screen/screens/customer_navigation_screen.dart';

final GlobalKey<ScaffoldState> mainGlobalKey = GlobalKey<ScaffoldState>();

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: NavigationScreenController(),
        builder: (controller) {
          if (isGuest == IsUserType.guest) {
            selectedUser == Usertype.customer;
            return UserNavigationScreen(controller: controller);
          } else {
            if (selectedUser == Usertype.provider) {         
              return ProviderNavigationScreen(controller: controller);
            }
            if (selectedUser == Usertype.customer) {
              return UserNavigationScreen(controller: controller);
            }
            return const Material();
          }
        });
  }
}
