import 'package:flutter/material.dart';

class NoisyBackground extends StatelessWidget {
  final deviceHeight;
  final Widget ForegroundWidget;

  const NoisyBackground(
      {super.key, this.deviceHeight, required this.ForegroundWidget});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Opacity(
            opacity: 0.1, // Subtle opacity for the noise texture
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  deviceHeight * 0.01), // Consistent rounded corners
              child: Image.asset(
                "assets/images/noise.png", // Noise texture
                
                fit: BoxFit
                    .cover, // Ensure the texture covers the entire container
              ),
            ),
          ),
        ),
        ForegroundWidget
      ],
    );
  }
}
