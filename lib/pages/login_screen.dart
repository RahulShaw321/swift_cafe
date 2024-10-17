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
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background_img.png",
            fit: BoxFit.contain,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: deviceHeight * 0.011,
                vertical: deviceHeight * 0.02,
              ),
              height: deviceHeight * 0.8,
              width: deviceHeight * 0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [BoxShadow(color: Colors.white.withOpacity(0.2))],
              ),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
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
                          Text(
                            "Swift",
                            style: GoogleFonts.getFont("Raleway",
                                fontSize: deviceHeight * 0.075,
                                color: Colors.white),
                          ),
                          Text(
                            "Café",
                            style: GoogleFonts.getFont("Raleway",
                                fontSize: deviceHeight * 0.045,
                                color: Colors.white),
                          ),
                          Text(
                            "\"Latte but never late\"",
                            style: GoogleFonts.getFont(
                              "Poppins",
                              fontSize: deviceHeight * 0.02,
                              color: Color.fromRGBO(171, 171, 171, 0.5),
                              shadows: [
                                Shadow(
                                  color: Colors.white.withOpacity(0.6),
                                  offset: Offset(0, 0),
                                  blurRadius: 20,
                                ),
                                Shadow(
                                  color: Colors.white.withOpacity(0.4),
                                  offset: Offset(0, 0),
                                  blurRadius: 30,
                                ),
                                Shadow(
                                  color: Colors.white.withOpacity(0.2),
                                  offset: Offset(0, 0),
                                  blurRadius: 40,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: deviceHeight * 0.01,
                      ),
                      CustomTextField(
                        label: "User Name",
                      ),
                      CustomTextField(label: "Password"),
                      Padding(
                        padding: EdgeInsets.only(top: deviceHeight * 0.04),
                        child: LoginButton(
                          deviceHeight: deviceHeight,
                        ),
                      ),Padding(
                        padding: EdgeInsets.only(top: deviceHeight * 0.04),
                        child: SignupButton(
                          deviceHeight: deviceHeight,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
