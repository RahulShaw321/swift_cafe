import 'package:flutter/material.dart';

class SignupButton extends StatelessWidget {
  final deviceHeight;
  const SignupButton({super.key, this.deviceHeight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: deviceHeight * 0.3,
      height: deviceHeight * 0.05,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.white, width: 2), // White border
          backgroundColor: Colors.transparent, // Transparent background
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // Rounded edges
          ),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Padding for the button
        ),
        onPressed: () {
          // Add your signup logic here
          print('Signup button pressed');
        },
        child: const Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300 // White text color
          ),
        ),
      ),
    );
  }
}
