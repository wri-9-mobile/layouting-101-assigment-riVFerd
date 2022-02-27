import 'package:flutter/material.dart';
import 'package:flutter_app_template/pages/login_page.dart';
import 'package:flutter_app_template/pages/second_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const tag = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.offNamed(LoginPage.tag),
              child: const Text('Go back to Login Page'),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(SecondPage.tag),
              child: const Text('Go to Second Page'),
            )
          ],
        ),
      ),
    );
  }
}
