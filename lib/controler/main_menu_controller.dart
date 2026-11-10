import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/Menu/home_page.dart';
import 'package:my_app/Menu/history_page.dart';
import 'package:my_app/Menu/profile_page.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> listPages = [
    HomePage(),
    const HistoryPage(),
    const ProfilePage(),
  ];
}