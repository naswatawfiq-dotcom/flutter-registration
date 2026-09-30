import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'calculator_page.dart';
import 'login_page.dart';
import 'routes.dart'; // <-- Tambahkan import ini

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Belajar Flutter Getx",
      initialRoute: Routes.registration,
      getPages: Routes.myPages,
    );
  }
}