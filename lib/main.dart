import 'package:flutter/material.dart';
import 'package:flutter_app_template/pages/login_page.dart';
import 'package:flutter_app_template/routes.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      title: 'Latihan App',
      defaultTransition: Transition.cupertino,
      getPages: Routes.pages,
      initialRoute: LoginPage.tag,
    );
  }
}
