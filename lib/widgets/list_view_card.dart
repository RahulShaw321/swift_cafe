import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe_app/widgets/glassmorphism.dart';
import 'package:swift_cafe_app/widgets/noisy_background.dart';

class ListViewCard extends StatelessWidget {
  final double deviceHeight;
  final String imgDirectory;
  final String coffeeName;
  final String description;
  final onPressed;

  const ListViewCard({
    super.key,
    required this.deviceHeight,
    required this.imgDirectory,
    required this.coffeeName,
    required this.description, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: deviceHeight * 0.25, // Increased height of the card
      child: GestureDetector(
        onTap: onPressed,
        child: Card(
          elevation: 4, // Elevation for shadow effect
          margin: EdgeInsets.symmetric(
              vertical: deviceHeight * 0.008), // Margin between cards
          color: Colors.white.withOpacity(0.15), // Background transparency
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(deviceHeight * 0.02), // Smooth rounded corners
          ),
          child: Glassmorphism(
            roundedEdges: deviceHeight * 0.02,
            widget: NoisyBackground(
              deviceHeight: deviceHeight,
              ForegroundWidget: Container(
                padding:
                    EdgeInsets.all(deviceHeight * 0.02), // Padding inside the card
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: deviceHeight * 0.03), // Space between image and text
              
                    // Title and description
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            coffeeName, // Use the coffeeName parameter
                            style: GoogleFonts.inter(
                              fontSize: deviceHeight * 0.025,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: deviceHeight * 0.005),
                          Row(
                            
                            children: [
                              Text(
                                '4.9 ⭐ (458)',
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: deviceHeight * 0.016,
                                ),
                              ),
                          SizedBox(width: deviceHeight * 0.02),
              
                              Image.asset('assets/images/veg.png',height: deviceHeight * 0.02,)
                            ],
                          ),
                          SizedBox(height: deviceHeight * 0.005),
                          Text(
                            description, // Use the description parameter
                            style: GoogleFonts.inter(
                              fontSize: deviceHeight * 0.015,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
              
                    // Stack to overlay image and button
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        // Image of the beverage
                        SizedBox(
                          height: double.infinity,
                          width: deviceHeight * 0.16,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(deviceHeight * 0.01),
                            child: Image.asset(
                              imgDirectory, // Use the imgDirectory parameter
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
              
                        // 'Add' Button
                        Positioned(
                          bottom: 0, // Adjust the position slightly
                          child: SizedBox(
                            height: deviceHeight * 0.02, // Smaller height
                            width: deviceHeight * 0.06, // Smaller width
                            child: ElevatedButton(
                              onPressed: () {
                                print('$coffeeName added'); // Use coffeeName in print
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      deviceHeight * 0.007), // Rounded corners
                                ),
                                padding: EdgeInsets.zero, // Remove internal padding
                              ),
                              child: FittedBox(
                                // Ensures text scales to fit
                                child: Text(
                                  'ADD',
                                  style: GoogleFonts.inter(
                                    fontSize:
                                        deviceHeight * 0.012, // Adjusted font size
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
