import 'package:flutter/widgets.dart';
import 'package:houserental/components/register_textfield.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:houserental/modules/splash_screen.dart';
import 'package:houserental/utils/text_styles.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final rePasswordController = TextEditingController();

  final textStyles = TextStyles();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    rePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 51, 153),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Text("House ",
                style: GoogleFonts.poppins(textStyle: textStyles.houseStyle)),
            Text("Rental",
                style: GoogleFonts.poppins(textStyle: textStyles.rentalStyle)),
          ],
        ),
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 13, 51, 153),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.1),
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.05),
                  child: Text(
                    "Sign Up",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.orange,
                        fontSize: screenWidth * 0.08,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                buildTextLabel("Name", screenWidth),
                SizedBox(height: screenHeight * 0.01),
                RegisterTextField(
                  controller: nameController,
                  obscureText: false,
                ),
                SizedBox(height: screenHeight * 0.03),
                buildTextLabel("Email", screenWidth),
                SizedBox(height: screenHeight * 0.01),
                RegisterTextField(
                  controller: emailController,
                  obscureText: false,
                ),
                SizedBox(height: screenHeight * 0.03),
                buildTextLabel("Password", screenWidth),
                SizedBox(height: screenHeight * 0.01),
                RegisterTextField(
                  controller: passwordController,
                  obscureText: true,
                ),
                SizedBox(height: screenHeight * 0.03),
                buildTextLabel("Re-Password", screenWidth),
                SizedBox(height: screenHeight * 0.01),
                RegisterTextField(
                  controller: rePasswordController,
                  obscureText: true,
                ),
                SizedBox(height: screenHeight * 0.04),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SplashScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.23,
                        vertical: screenHeight * 0.015),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color.fromARGB(255, 255, 107, 53),
                  ),
                  child: Text('Create Account',
                      style: GoogleFonts.poppins(
                        textStyle: textStyles.defStyle,
                        color: Colors.white,
                      )),
                ),
                SizedBox(height: screenHeight * 0.04),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.23),
                  child: Row(
                    children: [
                      Text("Already have an account?",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: Colors.amber,
                            ),
                          )),
                      SizedBox(width: screenWidth * 0.01),
                      Container(
                        padding: const EdgeInsets.only(bottom: 1),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Color.fromARGB(255, 255, 107, 53),
                          width: 1.0,
                        ))),
                        child: GestureDetector(
                          onTap: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SplashScreen(),
                              ),
                            );
                          },
                          child: Text("Sign In",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    TextStyle(fontSize: screenWidth * 0.04),
                                color: const Color.fromRGBO(255, 107, 53, 1),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                GestureDetector(
                  onTap: () async {
                    // // final message = await auth.signInWithGoogle();
                    // if (!context.mounted) return;
                    // if (message!.contains('Success')) {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const HomePage(),
                    //     ),
                    //   );
                    // }
                  },
                  child: Text("Sign up with Gmail",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(fontSize: screenWidth * 0.04),
                        color: Colors.amber,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextLabel(String text, double screenWidth) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.08),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.orange,
              fontSize: screenWidth * 0.04,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
