import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSwitch extends StatelessWidget {
  final deviceWidth;
  final deviceHeight;
  final bool isSelected;
  final String title;
  const CustomSwitch(
      {super.key,
      this.deviceWidth,
      this.deviceHeight,
      required this.isSelected,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: deviceHeight *0.07,
      width: deviceWidth * 0.41,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
       
        
        children: [
          Transform.scale(
            scale: 0.53,
            child: Switch(
              value: isSelected,
              onChanged: (bool) {},
              
              
              activeColor: Colors.white, // Thumb color when ON
              
              activeTrackColor: Colors.green, // Track color when ON
              inactiveThumbColor: Colors.white, // Thumb color when OFF
              inactiveTrackColor: Colors.grey, // Track color when OFF
            ),
          ),
          SizedBox(width: deviceWidth * 0.015,),
          
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.inter(
                  color: Colors.white54, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
