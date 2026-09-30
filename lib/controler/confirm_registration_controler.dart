import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String username;
  late String nama_lengkap;
  late String email;
  late String no_hp;
  late String jenis_kelamin;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;

    if (arguments != null && arguments is Map) {
      username = arguments["username"] ?? "";
      nama_lengkap = arguments["nama_lengkap"] ?? "";
      email = arguments["email"] ?? "";
      no_hp = arguments["no_hp"] ?? "";
      jenis_kelamin = arguments["jenis_kelamin"] ?? "";
    } else {
      username = "";
      nama_lengkap = "";
      email = "";
      no_hp = "";
      jenis_kelamin = "";
    }
  }
}