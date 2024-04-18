import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentalhealthapp/navigation_menu/navigation_menu_controller.dart';

class NavigationMenuPage extends StatelessWidget {
  const NavigationMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    // CRÉONS UNE INSTANCE DE NOTRE CONTROLLER DE NAVIGATION
    final controller = Get.put(NavigationMenuController());
    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
            height: 80.0,
            elevation: 2,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            backgroundColor: Colors.white,
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.dashboard_outlined), label: 'Dashboard'),
              NavigationDestination(
                  icon: Icon(Icons.message_outlined), label: 'Message'),
            ],
          )),
      body: Obx(() {
        return controller.screens[controller.selectedIndex.value];
      }),
    );
  }
}
