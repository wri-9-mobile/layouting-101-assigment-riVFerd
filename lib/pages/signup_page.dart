import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_shadow/simple_shadow.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  static const tag = "/signup";

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
                height: 50,
              ),

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
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF4b7094),
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
                              color: const Color(0xFF315982),
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        //Login form name
                        SimpleShadow(
                          sigma: 7,
                          color: Colors.grey.withOpacity(0.5),
                          offset: const Offset(0, 10),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Name',
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
                          onPressed: () {},
                          child: Text(
                            'Sign Up',
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

                        //Go to sign in page
                        Row(
                          children: [
                            const Text(
                              'Already Have An Account? ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0e4a86),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: const Text(
                                'Sign In',
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
