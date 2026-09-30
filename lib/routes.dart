import 'package:get/get.dart';

// 1. Import file-file halaman dari folder pages/
import 'pages/registration_page.dart';
import 'pages/confirm_registration.dart';
import 'calculator_page.dart';
import 'login_page.dart';

class Routes {
  // 2. Definisi string route name (variabel static)
  static String registration = '/registration';
  static String confirmRegistration = '/confirm-registration';
  static String calculator = '/calculator';
  static String login = '/login';

  // 3. List halaman untuk GetX
  static final myPages = [
    GetPage(
      name: registration,
      page: () => RegistrationPage(),
    ),
    GetPage(
      name: confirmRegistration,
      page: () => ConfirmRegistrationPage(),
    ),
    GetPage(
      name: calculator,
      page: () => CalculatorPage(),
    ),
    GetPage(
      name: login,
      page: () => LoginPage(),
    ),
  ];
}