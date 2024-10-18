import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe_app/widgets/custom_text_field.dart';
import 'package:swift_cafe_app/widgets/login_button.dart';
import 'package:swift_cafe_app/widgets/noisy_background.dart';
import 'package:swift_cafe_app/widgets/signup_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.bottom;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: deviceHeight,
            width: deviceWidth,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Background image with coffee beans
                Image.asset(
                  "assets/images/background_img.jpg",
                  height: deviceHeight,
                  width: deviceWidth,
                  fit: BoxFit.cover,
                ),
                // Gradient overlay for subtle tint
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(1, 1, 1, 0),
                          Color.fromRGBO(207, 123, 75, 0.51),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                // Glassmorphism container
                ClipRRect(
                  borderRadius: BorderRadius.circular(deviceHeight * 0.02),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                    child: NoisyBackground(
                      deviceHeight: deviceHeight,
                      ForegroundWidget: Container(
                        height: deviceHeight * 0.87,
                        width: deviceWidth * 0.85,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(deviceHeight * 0.02),
                          color: Colors.white.withOpacity(0.08),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.4),
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 24,
                              offset: const Offset(4, 4),
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 24,
                              spreadRadius: -1,
                              offset: const Offset(-4, -4),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: deviceHeight * 0.03,
                            vertical: deviceHeight * 0.035,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Logo image
                              Image.asset(
                                "assets/images/app_logo.png",
                                height: deviceHeight * 0.075,
                              ),
                              // App title
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Swift",
                                    style: GoogleFonts.raleway(
                                      fontSize: deviceHeight * 0.075,
                                      color: Colors.white,
                                      height: 1.0,
                                    ),
                                  ),
                                  Text(
                                    "Café",
                                    style: GoogleFonts.raleway(
                                      fontSize: deviceHeight * 0.045,
                                      color: Colors.white,
                                      height: 0.9,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: deviceHeight * 0.024,
                                    ),
                                    child: Text(
                                      "\"Latte but never late\"",
                                      style: GoogleFonts.poppins(
                                        fontSize: deviceHeight * 0.018,
                                        color: const Color.fromRGBO(
                                            171, 171, 171, 0.95),
                                        shadows: [
                                          Shadow(
                                            color:
                                                Colors.white.withOpacity(0.6),
                                            blurRadius: 20,
                                          ),
                                          Shadow(
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            blurRadius: 30,
                                          ),
                                          Shadow(
                                            color:
                                                Colors.white.withOpacity(0.2),
                                            blurRadius: 40,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              // Username and Password fields
                              const CustomTextField(label: "User Name"),
                              const CustomTextField(label: "Password"),
                              const SizedBox(height: 20),
                              // Login Button
                              LoginButton(
                                deviceHeight: deviceHeight,
                              ),
                              const SizedBox(height: 20),
                              // Signup Button
                              SignupButton(
                                deviceHeight: deviceHeight,
                              ),

                              const SizedBox(height: 15),
                              // Privacy Policy Text
                              GestureDetector(
                                onTap: () => print("Privacy Policy Opened"),
                                child: Text(
                                  "Privacy Policy",
                                  style: GoogleFonts.inter(
                                    fontSize: deviceHeight * 0.02,
                                    color: Colors.white.withOpacity(0.7),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
