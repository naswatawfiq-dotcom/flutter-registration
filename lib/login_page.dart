import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controler/login_controller.dart';
import 'components/custom_button.dart';
import 'components/custom_texfield.dart'; // <--- Ubah jadi satu huruf 't' (custom_texfield.dart)

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo Pinterest Sederhana
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  color: Color(0xFFE60023),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    "P",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              
              // Judul Header
              const Text(
                "Welcome to Pinterest",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),

              // Input Username
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                ),
              ),
              const SizedBox(height: 6),
              CustomTextfield(
                myHint: 'Masukkan username',
                txtController: controller.txtUsername,
              ),
              const SizedBox(height: 16),

              // Input Password
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                ),
              ),
              const SizedBox(height: 6),
              CustomTextfield(
                myHint: 'Masukkan password',
                txtController: controller.txtPassword,
                obscureText: true, // Supaya password jadi titik-titik
              ),
              const SizedBox(height: 24),

              // Tombol Login & Loading Indikator
              Obx(() {
                if (controller.isLoading.value) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Color(0xFFE60023),
                    ),
                  );
                }
                return SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE60023),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {
                      controller.login();
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }),
              const SizedBox(height: 20),

              // Footer Teks Bantuan
              const Text(
                "By continuing, you agree to Pinterest's Terms & Conditions",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 11, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}