import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe_app/widgets/custom_text_field.dart';
import 'package:swift_cafe_app/widgets/login_button.dart';
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
                Image.asset(
                  "assets/images/background_img.jpg",
                  height: deviceHeight,
                  width: deviceWidth,
                  fit: BoxFit.cover,
                ),
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Opacity(
                            opacity: 0.09, // Adjust the opacity as needed
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(deviceHeight * 0.02),
                              child: Image.asset(
                                "assets/images/noisy-background.jpg", // Your noise texture
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: deviceHeight * 0.87,
                          width: deviceWidth * 0.9,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(deviceHeight * 0.02),
                            boxShadow: [
                              BoxShadow(color: Colors.white.withOpacity(0.2))
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: deviceHeight * 0.01,
                                vertical: deviceHeight * 0.035),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/app_logo.png",
                                  height: deviceHeight * 0.075,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize
                                          .min, // Ensures minimal space in the Column
                                      mainAxisAlignment: MainAxisAlignment
                                          .center, // Centers content vertically
                                      children: [
                                        Text(
                                          "Swift",
                                          style: GoogleFonts.raleway(
                                            fontSize: deviceHeight *
                                                0.06, // Larger text size for "Swift"
                                            color: Colors.white,
                                            height:
                                                1.0, // Controls line height to reduce space
                                          ),
                                        ),
                                        Text(
                                          "Café",
                                          style: GoogleFonts.raleway(
                                            fontSize: deviceHeight *
                                                0.04, // Smaller text size for "Café"
                                            color: Colors.white,
                                            height:
                                                0.9, // Adjusts spacing between the two lines
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: deviceHeight * 0.024),
                                      child: Text(
                                        "\"Latte but never late\"",
                                        style: GoogleFonts.getFont(
                                          "Poppins",
                                          fontSize: deviceHeight * 0.02,
                                          color: const Color.fromRGBO(
                                              171, 171, 171, 0.8),
                                          shadows: [
                                            Shadow(
                                              color:
                                                  Colors.white.withOpacity(0.6),
                                              offset: const Offset(0, 0),
                                              blurRadius: 20,
                                            ),
                                            Shadow(
                                              color:
                                                  Colors.white.withOpacity(0.4),
                                              offset: const Offset(0, 0),
                                              blurRadius: 30,
                                            ),
                                            Shadow(
                                              color:
                                                  Colors.white.withOpacity(0.2),
                                              offset: const Offset(0, 0),
                                              blurRadius: 40,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: deviceHeight * 0.01,
                                ),
                                const CustomTextField(
                                  label: "User Name",
                                ),
                                const CustomTextField(label: "Password"),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: deviceHeight * 0.04),
                                  child: LoginButton(
                                    deviceHeight: deviceHeight,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: deviceHeight * 0.04),
                                  child: SignupButton(
                                    deviceHeight: deviceHeight,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceHeight * 0.033),
                                  child: GestureDetector(
                                    child: Text(
                                      "Privacy Policy",
                                      style: GoogleFonts.getFont("Inter",
                                          fontSize: deviceHeight * 0.02,
                                          color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                    onTap: () {
                                      print("Privacy Policy Opened");
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
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
