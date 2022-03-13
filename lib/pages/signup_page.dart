import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app_template/generate_styles.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  static const tag = "/signup";

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var blueThemed = const Color(0xFF0e4a86);
  var isVisible = false;

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
              const Spacer(flex: 2),

              //Arrow Back Button
              GestureDetector(
                onTap: () => Get.back(),
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: 60,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color(0xFFe5ecf4),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: blueThemed,
                  ),
                ),
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
                            'Hello!\nSignup to\nget started',
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

                        //Login form name
                        GenerateStyles.getTextForm(
                          TextFormField(
                            decoration: GenerateStyles.getInputDecoration(
                              'Name',
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 10,
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
                          onPressed: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(400, 60),
                            primary: blueThemed,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        //Go to sign in page
                        Row(
                          children: [
                            Text(
                              'Already Have An Account? ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: blueThemed,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.back(),
                              child: Text(
                                'Sign In',
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
