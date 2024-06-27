import 'dart:async';
import 'package:flutter/material.dart';
import 'package:houserental/views/register_page/register_page.dart';
// import 'package:receipt_wallet/Services/wrapper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const RegisterPage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Container(
          width: screenWidth * 1,
          height: screenHeight * 1,
          // clipBehavior: Clip.none,
          decoration: ShapeDecoration(
            color: Color.fromARGB(255, 231, 231, 231),
            //   gradient: const LinearGradient(
            //     begin: Alignment(0.00, -1.00),
            //     end: Alignment(0, 0.1),
            //     colors: [
            //       Color.fromARGB(255, 27, 38, 56),
            //       Color.fromARGB(255, 6, 21, 47)
            //     ],
            // ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenWidth * 0.9),
                child: Column(
                  children: [
                    Text(
                      'House',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 107, 53),
                        fontSize: screenWidth * 0.09,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.50,
                      ),
                    ),
                    Text(
                      'Rental',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 107, 53),
                        fontSize: screenWidth * 0.09,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(bottom: screenHeight * 0.1),
              //   child: Text(
              //     'Powered by Atelier',
              //     textAlign: TextAlign.center,
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: screenWidth * 0.05,
              //       fontFamily: 'Poppins',
              //       fontWeight: FontWeight.w600,
              //       letterSpacing: -0.50,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
