import 'package:flutter/material.dart';
import 'package:flutter_app_template/pages/home_page.dart';
import 'package:flutter_app_template/pages/signup_page.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_shadow/simple_shadow.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const tag = "/login";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),

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
                              color: const Color(0xFF315982),
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        //Login form email
                        SimpleShadow(
                          sigma: 7,
                          color: Colors.grey.withOpacity(0.5),
                          offset: const Offset(0, 10),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Email Address',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        //Login form password
                        SimpleShadow(
                          sigma: 7,
                          color: Colors.grey.withOpacity(0.5),
                          offset: const Offset(0, 10),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Password',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
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
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(400, 60),
                            primary: const Color(0xFF0e4a86),
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
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
                            const Text(
                              'Not Registered?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0e4a86),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.toNamed(SignupPage.tag),
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0e4a86),
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

              const SizedBox(
                height: 100,
              ),

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
