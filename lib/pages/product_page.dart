import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe_app/widgets/custom_switch.dart';

import 'package:swift_cafe_app/widgets/glassmorphism.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: deviceHeight,
        child: Stack(
          children: [
            // Background Image
            Image.asset(
              'assets/images/latte.png',
              height: deviceHeight * 0.5,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            // Main Content Below the Image
            Positioned(
              top: deviceHeight * 0.45,
              child: Stack(
                children: [
                  // Background image with coffee beans
                  Image.asset(
                    "assets/images/background_img.jpg",
                    height: deviceHeight,
                    width: deviceWidth,
                    fit: BoxFit.cover,
                  ),
                  Glassmorphism(
                    roundedEdges: deviceHeight * 0.02,
                    widget: Container(
                      height: deviceHeight * 0.55,
                      width: deviceWidth,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Title and Rating Row
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lattè',
                                  style: GoogleFonts.inter(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 20),
                                    const SizedBox(width: 4),
                                    Text(
                                      '4.9 (458)',
                                      style: GoogleFonts.inter(
                                        fontSize: 16,
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Caffè latte is a milk coffee made with espresso and steamed milk.',
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                color: Colors.white70,
                              ),
                            ),
                            const SizedBox(height: 16),

                            // Choice of Cup Filling
                            Text(
                              'Choice of Cup Filling',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),

                            Container(
                              width: deviceWidth *
                                  0.85, // Adjust width for better spacing
                              height: deviceHeight *
                                  0.07, // Adjust height as needed
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8), // Add padding for space
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly, // Space between chips
                                children: [
                                  ChoiceChip(
                                    label: const Text('Full'),
                                    selected: true,
                                    selectedColor: Colors.green,
                                    showCheckmark: false,
                                    labelStyle: TextStyle(
                                      color: Colors
                                          .white, // Adjust text color for the selected state
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  ChoiceChip(
                                    label: const Text('1/2 Full'),
                                    selected: false,
                                    labelStyle: const TextStyle(
                                      color:
                                          Colors.black, // Unselected text color
                                    ),
                                  ),
                                  ChoiceChip(
                                    label: const Text('3/4 Full'),
                                    selected: false,
                                    labelStyle: const TextStyle(
                                      color:
                                          Colors.black, // Unselected text color
                                    ),
                                  ),
                                  ChoiceChip(
                                    label: const Text('1/4 Full'),
                                    selected: false,
                                    labelStyle: const TextStyle(
                                      color:
                                          Colors.black, // Unselected text color
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 16),

                            // Choice of Milk
                            Text(
                              'Choice of Milk',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Wrap(
                              spacing:
                                  8, // Space between switches in the same row
                              runSpacing: -5, // Space between rows
                              children: [
                                CustomSwitch(
                                  isSelected: false,
                                  title: "Skim Milk",
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth,
                                ),
                                CustomSwitch(
                                  isSelected: true,
                                  title: "Full Cream Milk",
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth,
                                ),
                                CustomSwitch(
                                  isSelected: false,
                                  title: "Almond Milk",
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth,
                                ),
                                CustomSwitch(
                                  isSelected: false,
                                  title: "Full Cream Milk",
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth,
                                ),
                                CustomSwitch(
                                  isSelected: false,
                                  title: "Soy Milk",
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth,
                                ),
                                CustomSwitch(
                                  isSelected: false,
                                  title: "Oat Milk",
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth,
                                ),
                                CustomSwitch(
                                  isSelected: false,
                                  title: "Lactose Free Milk",
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth,
                                ),
                              ],
                            ),

                            const SizedBox(height: 16),

                            // Choice of Sugar
                            Text(
                              'Choice of Sugar',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Wrap(
                              spacing: 8,
                              children: [
                                CustomSwitch(
                                  isSelected: false,
                                  title: "Sugar X1",
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth,
                                ),
                                CustomSwitch(
                                  isSelected: true,
                                  title: "Sugar X2",
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth,
                                ),
                                CustomSwitch(
                                  isSelected: false,
                                  title: "1/2 Sugar",
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth,
                                ),
                                CustomSwitch(
                                  isSelected: false,
                                  title: "No Sugar",
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth,
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),

                            // Priority and Submit Button Row
                            SizedBox(
                              height: deviceHeight * 0.11,
                              child: Card(
                                elevation: 4,
                                color: Color.fromRGBO(51, 51, 51, 0.84),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: deviceWidth * 0.035,
                                        ),
                                        Checkbox(
                                          value: false,
                                          onChanged: (value) {
                                            // Handle checkbox change
                                          },
                                          activeColor: Colors.white,
                                          side: BorderSide(color: Colors.white),
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          'High Priority',
                                          style: GoogleFonts.inter(
                                              color: Colors.white54,
                                              fontSize: deviceHeight * 0.024),
                                        ),
                                        SizedBox(
                                          width: deviceWidth * 0.01,
                                        ),
                                        Image.asset(
                                          'assets/images/error.png',
                                          height: deviceHeight * 0.023,
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: deviceWidth * 0.035),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Handle submit action
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green,
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 32,
                                            vertical: 12,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                deviceHeight * 0.01),
                                          ),
                                        ),
                                        child: FittedBox(
                                            child: Text(
                                          'Submit',
                                          style: GoogleFonts.inter(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
