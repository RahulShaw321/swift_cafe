import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final deviceHeight;
  const LoginButton({super.key, this.deviceHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceHeight * 0.3,
      height: deviceHeight * 0.06,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(77, 43, 26, 1),
            Color.fromRGBO(167, 116, 90, 1)
          ], // Coffee and black colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius:
            BorderRadius.circular(deviceHeight * 0.2), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2), // Position of the shadow
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent, // Text color
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(deviceHeight * 0.2),
          ),
        ),
        onPressed: () {
          print('Login button pressed');
        },
        child: const Text('Login'),
      ),
    );
  }
}
