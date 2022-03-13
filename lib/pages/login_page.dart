import 'package:flutter/material.dart';
import 'package:flutter_app_template/pages/home_page.dart';
import 'package:flutter_app_template/pages/signup_page.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app_template/generate_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const tag = "/login";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var isVisible = false;
  var blueThemed = const Color(0xFF0e4a86);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),

              //Greeting and login form
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        //Greeting
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Hello Again!\nWelcome\nback',
                            style: GoogleFonts.playfairDisplay(
                              color: blueThemed,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        //Login form email
                        GenerateStyles.getTextForm(
                          TextFormField(
                            decoration: GenerateStyles.getInputDecoration(
                              'Email Address',
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        //Login form password
                        GenerateStyles.getTextForm(
                          TextFormField(
                            obscureText: !isVisible,
                            decoration: GenerateStyles.getInputDecoration(
                              'Password',
                            ).copyWith(
                              suffixIcon: IconButton(
                                onPressed: () => setState(() {
                                  isVisible = !isVisible;
                                }),
                                icon: Icon(isVisible
                                    ? Icons.remove_red_eye
                                    : Icons.visibility_off),
                                color: blueThemed,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        //Submit button
                        ElevatedButton(
                          onPressed: () => Get.offNamed(HomePage.tag),
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(400, 60),
                            primary: blueThemed,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        //Go to sign up page
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Not Registered?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: blueThemed,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.toNamed(SignupPage.tag),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: blueThemed,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const Spacer(),

              //Background image
              Center(
                child: Image.asset(
                  'assets/iceberg-bro.png',
                  width: 500,
                  height: 150,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
