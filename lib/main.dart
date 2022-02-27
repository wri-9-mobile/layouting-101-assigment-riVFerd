import 'package:flutter/material.dart';
import 'package:flutter_app_template/pages/login_page.dart';
import 'package:flutter_app_template/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Latihan App',
      defaultTransition: Transition.cupertino,
      getPages: Routes.pages,
      initialRoute: LoginPage.tag,
    );
  }
}
