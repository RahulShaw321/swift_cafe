import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupButton extends StatelessWidget {
  final deviceHeight;
  const SignupButton({super.key, this.deviceHeight});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
                              onPressed: () => print("Signup Pressed"),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                    color: Colors.white.withOpacity(0.6)),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 90,
                                  vertical: 15,
                                ),
                              ),
                              child: Text(
                                "Signup",
                                style: GoogleFonts.inter(
                                  fontSize: deviceHeight * 0.022,
                                  color: Colors.white,
                                ),
                              ),
                            );
  }
}
