import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Path disesuaikan dengan nama folder & file di project-mu:
import 'controler/calkulator_controler.dart';
import 'components/custom_texfield.dart';
import 'components/custom_button.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  // Memanggil class CalkulatorController yang sudah dibuat
  final controller = Get.put(CalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("my kalkulator")),
      body: Column(
        children: [
          CustomTextfield(myHint: "input angka 1", txtController: txtangka1),
          CustomTextfield(myHint: "input angka 2", txtController: txtangka2),
          ElevatedButton(
            onPressed: () {
              controller.tambah(
                double.parse(txtangka1.text),
                double.parse(txtangka2.text),
              );
            },
            child: const Text("tambah"),
          ),

          Obx(
            () => Text(
              "hasil " + controller.hasilHitung.value.toString(),
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}