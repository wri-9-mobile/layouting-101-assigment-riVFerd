import 'package:flutter_app_template/pages/home_page.dart';
import 'package:flutter_app_template/pages/login_page.dart';
import 'package:flutter_app_template/pages/second_page.dart';
import 'package:flutter_app_template/pages/signup_page.dart';
import 'package:get/get.dart';

// class Routes {
//   static MaterialPageRoute onGenerateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case LoginPage.tag:
//         return MaterialPageRoute(builder: (context) => const LoginPage());
//       case HomePage.tag:
//         return MaterialPageRoute(builder: (context) => const HomePage());
//       default:
//         return MaterialPageRoute(builder: (context) => const SignupPage());
//     }
//   }
// }

class Routes {
  static final pages = [
    GetPage(
      name: LoginPage.tag,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: SignupPage.tag,
      page: () => const SignupPage(),
    ),
    GetPage(
      name: HomePage.tag,
      page: () => const HomePage(),
    ),
    GetPage(
      name: SecondPage.tag,
      page: () => const SecondPage(),
    ),
  ];
}
