import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  final deviceHeight;
  const LoginButton({super.key, this.deviceHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
  decoration: BoxDecoration(
    gradient: const LinearGradient(
      colors: [
        Color.fromRGBO(77, 43, 26, 1),
        Color.fromRGBO(167, 116, 90, 1),
      ],
    ),
    borderRadius: BorderRadius.circular(30), // Rounded corners
  ),
  child: ElevatedButton(
    onPressed: () => print("Login Pressed"),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent, // Transparent to show the gradient
      shadowColor: Colors.black.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 100,
        vertical: 15,
      ),
    ),
    child: Text(
      "Login",
      style: GoogleFonts.inter(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  ),
);


  }
}
