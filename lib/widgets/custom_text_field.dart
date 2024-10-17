import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String label  ;
  
  const CustomTextField({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText:label,
            labelStyle: GoogleFonts.getFont(
              "Inter",
              color: Colors.white,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            )),
      ),
    );
  }
}
