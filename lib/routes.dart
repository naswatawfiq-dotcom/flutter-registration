import 'package:get/get.dart';

import 'pages/registration_page.dart';
import 'pages/confirm_registration.dart';
import 'pages/list_makanan_page.dart';
import 'pages/detail_makanan_page.dart'; 
import 'calculator_page.dart';
import 'login_page.dart';
import 'pages/main_menu.dart'; 

class Routes {
  static const String login = "/login";
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirm_registration";
  static const String listMakanan = "/list_makanan";
  static const String mainMenu = "/main_menu"; 
  static const String detailMakanan = "/detail_makanan"; 

  static final myPages = [
    GetPage(name: login, page: () => LoginPage()), // <-- Didaftarkan di sini
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()), 
    GetPage(name: listMakanan, page: () => ListMakananPage()),
    GetPage(name: mainMenu, page: () => MainMenu()), 
    GetPage(name: detailMakanan, page: () => DetailMakananPage()), 
  ];
}