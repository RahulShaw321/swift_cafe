import 'dart:ui';

import 'package:flutter/material.dart';

class Glassmorphism extends StatelessWidget {
  final Widget widget;
  
  final roundedEdges;
  const Glassmorphism({super.key, required this.widget,  this.roundedEdges});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(roundedEdges),
      child: Container(
        decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.1), // Frosted glass effect
      
     
        ),
        child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
      child: Container(
        color: Colors.white.withOpacity(0.02), // Overlay for smoother look
        child: widget,
      ),
        ),
      ),
    );

  }
}
