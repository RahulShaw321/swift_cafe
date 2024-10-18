import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewCard extends StatelessWidget {
  final deviceHeight;
  final String imgDirectory;
  final String coffeeName;
  final String description;

  const ListViewCard(
      {super.key,
      this.deviceHeight,
      required this.imgDirectory,
      required this.coffeeName,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Elevation for shadow effect
      margin: EdgeInsets.symmetric(
          vertical: deviceHeight * 0.01), // Margin between cards
      color: Colors.white
          .withOpacity(0.15), // Slightly stronger background transparency
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // Smooth rounded corners
      ),
      child: Padding(
        padding: EdgeInsets.all(deviceHeight * 0.02), // Padding inside the card
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image of the beverage
            Image.asset(
              'assets/images/latte.png',
              height: deviceHeight * 0.1,
              fit: BoxFit.contain,
            ),
            SizedBox(
                width: deviceHeight * 0.02), // Space between image and text

            // Title and description
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lattè',
                    style: GoogleFonts.inter(
                      fontSize: deviceHeight * 0.025,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: deviceHeight * 0.005),
                  Text(
                    'Caffè latte is made with espresso and steamed milk.',
                    style: GoogleFonts.inter(
                      fontSize: deviceHeight * 0.015,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            // 'Add' Button
            ElevatedButton(
              onPressed: () {
                print('Latte added');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(12), // Button with slight rounding
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: deviceHeight * 0.03,
                  vertical: deviceHeight * 0.015,
                ), // Adjust padding inside button
              ),
              child: Text(
                'ADD',
                style: GoogleFonts.inter(
                  fontSize: deviceHeight * 0.018,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
