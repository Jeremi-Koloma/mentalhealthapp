import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:mentalhealthapp/pages/dashbord/dashbord_page.dart';
import 'package:mentalhealthapp/pages/home/home_page.dart';
import 'package:mentalhealthapp/pages/message/message_page.dart';

class NavigationMenuController extends GetxController {
  // une variable qui va retourné le menu selectionné par l'utilisateur
  final Rx<int> selectedIndex = 0.obs;

  // les Ecrans ou pages
  final screens = [
    const HomePage(),
    const DashbordPage(),
    const MessagePage(),
  ];
}
