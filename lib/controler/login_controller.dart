import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../models/login_model.dart';

class LoginController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;
  var loginModel = Rxn<LoginModel>();

  void login() async {
    if (txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty) {
      Get.snackbar(
        "Peringatan", 
        "Username dan Password tidak boleh kosong",
        backgroundColor: Colors.orange, 
        colorText: Colors.white,
      );
      return;
    }

    try {
      isLoading.value = true;
      final url = Uri.parse("https://mediadwi.com/api/latihan/login");

      final response = await http.post(url, body: {
        "username": txtUsername.text.toString(),
        "password": txtPassword.text.toString(),
      });
      
      if (response.statusCode == 200) {
        loginModel.value = loginModelFromJson(response.body);

        if (loginModel.value?.status == true) {
          Get.snackbar(
            "Berhasil", 
            loginModel.value!.message,
            backgroundColor: Colors.green, 
            colorText: Colors.white,
          );
          
          print("Token: ${loginModel.value?.token}");

          // Menggunakan Get.offNamed sesuai dengan routing yang ada
          Get.offNamed('/main_menu'); 
        } else {
          Get.snackbar(
            "Gagal", 
            loginModel.value?.message ?? "Terjadi kesalahan",
            backgroundColor: Colors.red, 
            colorText: Colors.white,
          );
        }
      } else {
        Get.snackbar(
          "Gagal", 
          "Cek internet connection",
          backgroundColor: Colors.red, 
          colorText: Colors.white,
        );
      }
    } catch (e) {
      Get.snackbar(
        "Error", 
        e.toString(),
        backgroundColor: Colors.red, 
        colorText: Colors.white,
      );
    } finally {
      isLoading.value = false; // Dijamin loading pasti mati baik sukses maupun gagal
    }
  }
}