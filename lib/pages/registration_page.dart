import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtNamaLengkap = TextEditingController();
  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtNoHp = TextEditingController();

  String? selectedJenisKelamin;
  final List<String> listJenisKelamin = ['Laki-laki', 'Perempuan'];

  @override
  Widget build(BuildContext context) {
    const primaryColor = Colors.indigo;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "Registration",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 4,
              shadowColor: Colors.black.withOpacity(0.25),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, // <-- Diperbaiki di sini
                  children: [
                    const Text(
                      "Form Pendaftaran",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "Lengkapi data diri Anda di bawah ini",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[600], fontSize: 13),
                    ),
                    const SizedBox(height: 24),

                    // Input Username
                    _buildInputField(
                      controller: txtUsername,
                      hint: "Input Username",
                      icon: Icons.person_outline,
                    ),
                    const SizedBox(height: 16),

                    // Input Nama Lengkap
                    _buildInputField(
                      controller: txtNamaLengkap,
                      hint: "Input Nama Lengkap",
                      icon: Icons.badge_outlined,
                    ),
                    const SizedBox(height: 16),

                    // Input Email
                    _buildInputField(
                      controller: txtEmail,
                      hint: "Input Email",
                      icon: Icons.email_outlined,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),

                    // Input No HP
                    _buildInputField(
                      controller: txtNoHp,
                      hint: "Input No HP",
                      icon: Icons.phone_android_outlined,
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 16),

                    // Dropdown Jenis Kelamin
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: "Jenis Kelamin",
                        prefixIcon: const Icon(Icons.people_outline, color: primaryColor),
                        filled: true,
                        fillColor: Colors.grey[50],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: primaryColor, width: 2),
                        ),
                      ),
                      value: selectedJenisKelamin,
                      items: listJenisKelamin.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedJenisKelamin = newValue;
                        });
                      },
                    ),
                    const SizedBox(height: 28),

                    // Tombol Submit
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 2,
                        ),
                        onPressed: () {
                          Get.toNamed(
                            Routes.confirmRegistration,
                            arguments: {
                              "username": txtUsername.text,
                              "nama_lengkap": txtNamaLengkap.text,
                              "email": txtEmail.text,
                              "no_hp": txtNoHp.text,
                              "jenis_kelamin": selectedJenisKelamin ?? "-",
                            },
                          );
                        },
                        child: const Text(
                          "Send",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: hint,
        prefixIcon: Icon(icon, color: Colors.indigo),
        filled: true,
        fillColor: Colors.grey[50],
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.indigo, width: 2),
        ),
      ),
    );
  }
}