import 'package:get/get.dart';

class CalkulatorController extends GetxController {
  var hasilHitung = 0.0.obs; // obs digunakan untuk update ke UI page
  // method tambah kurang kali dan bagi
 void tambah(double angka1, double angka2) {
    hasilHitung.value = angka1 + angka2;
  }

  void kurang(double angka1, double angka2) {
    hasilHitung.value = angka1 - angka2;
  }
  
  void kali(double angka1, double angka2) {
    hasilHitung.value = angka1 * angka2;
  }

  void bagi(double angka1, double angka2) {
    if (angka2 != 0) {
      hasilHitung.value = angka1 / angka2;
    } else {
      // Penanganan pembagian dengan nol
      Get.snackbar(
        'Error',
        'Tidak dapat membagi dengan angka nol',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}