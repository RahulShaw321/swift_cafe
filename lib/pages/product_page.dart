import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe_app/widgets/custom_switch.dart';

import 'package:swift_cafe_app/widgets/glassmorphism.dart';
import 'package:swift_cafe_app/widgets/noisy_background.dart';

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
              'assets/images/latte.jpg',
              height: deviceHeight * 0.45,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            // Main Content Below the Image
            Positioned(
              top: deviceHeight * 0.4,
              child: Stack(
                children: [
                  // Background image with coffee beans
                  ClipRRect(
                    borderRadius: BorderRadius.circular(deviceHeight * 0.02),
                    child: Image.asset(
                      "assets/images/background_img.jpg",
                      height: deviceHeight,
                      width: deviceWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                  NoisyBackground(
                    deviceHeight: deviceHeight,
                    ForegroundWidget: Glassmorphism(
                      roundedEdges: deviceHeight * 0.02,
                      widget: Container(
                        height: deviceHeight * 0.6,
                        width: deviceWidth,
                        padding:
                            EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Title and Rating Row
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Lattè',
                                          style: GoogleFonts.inter(
                                            fontSize: 18,
                                            color: Color.fromRGBO(
                                                205, 205, 205, 1),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '4.9  ',
                                              style: GoogleFonts.inter(
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                    205, 205, 205, 1),
                                              ),
                                            ),
                                            Icon(Icons.star,
                                                color: Colors.amber, size: 12),
                                            Text(
                                              ' (458)   ',
                                              style: GoogleFonts.inter(
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                    205, 205, 205, 1),
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/images/veg.png',
                                              height: deviceHeight * 0.02,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: deviceHeight * 0.03,
                                      width: deviceWidth * 0.13,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors
                                            .white, // Background color of the dropdown
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: DropdownButton<int>(
                                        value: 1,
                                        isExpanded:
                                            true, // Ensures the full width is used
                                        items: List.generate(10, (index) {
                                          return DropdownMenuItem<int>(
                                            value: index + 1,
                                            child: Text(
                                              '${index + 1}',
                                              style: GoogleFonts.inter(
                                                fontSize: 11,
                                                color: Colors
                                                    .grey, // Text color of dropdown items
                                              ),
                                            ),
                                          );
                                        }),
                                        onChanged: (value) {},

                                        // Custom Row for the selected item and arrow
                                        selectedItemBuilder: (context) {
                                          return List.generate(10, (index) {
                                            return Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  '${index + 1}',
                                                  style: GoogleFonts.inter(
                                                    fontSize: 11,
                                                    color: Colors
                                                        .grey, // Selected item text color
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: deviceWidth * 0.02,
                                                ),
                                                const VerticalDivider(
                                                  thickness: 1,
                                                  width: 10,
                                                  color: Colors
                                                      .grey, // Divider color
                                                ),
                                                Transform.rotate(
                                                  angle: pi / 2.0,
                                                  child: Icon(
                                                    Icons.navigate_next,
                                                    size: deviceHeight * 0.026,
                                                    color: Colors
                                                        .grey, // Icon color
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 3,
                                                ),
                                              ],
                                            );
                                          });
                                        },
                                        icon: SizedBox(),
                                        underline: SizedBox(),
                                        dropdownColor: Colors
                                            .white, // Dropdown background color
                                        iconEnabledColor: Colors.grey,
                                        iconSize: deviceHeight *
                                            0.025, // Dropdown icon size
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                                style: GoogleFonts.inter(
                                  fontSize: 10,
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
                              Transform.scale(
                                scale: 0.85,
                                alignment: Alignment.centerLeft,
                                child: const Row(
                                  children: [
                                    SizedBox(width: 8),
                                    ChoiceChip(
                                      label: Text(
                                        'Full',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      selected:
                                          true, // Change this to reflect the actual selected state
                                      selectedColor: Colors.green,
                                      showCheckmark: false,
                                      labelStyle: TextStyle(
                                        color: Colors
                                            .white, // Change text color based on selection
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    ChoiceChip(
                                      disabledColor: Colors.white,
                                      label: Text(
                                        '1/2 Full',
                                        style: TextStyle(
                                          color: Colors
                                              .black, // Change text color based on selection
                                        ),
                                      ),
                                      selected:
                                          false, // Change this to reflect the actual selected state
                                      labelStyle: TextStyle(
                                        color: Colors
                                            .black, // Change text color based on selection
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    ChoiceChip(
                                      disabledColor: Colors.white,
                                      label: Text(
                                        '3/4 Full',
                                        style: TextStyle(
                                          color: Colors
                                              .black, // Change text color based on selection
                                        ),
                                      ),
                                      selected:
                                          false, // Change this to reflect the actual selected state
                                      labelStyle: TextStyle(
                                        color: Colors
                                            .black, // Change text color based on selection
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    ChoiceChip(
                                      disabledColor: Colors.white,
                                      label: Text(
                                        '1/4 Full',
                                        style: TextStyle(
                                          color: Colors
                                              .black, // Change text color based on selection
                                        ),
                                      ),
                                      selected:
                                          false, // Change this to reflect the actual selected state
                                      labelStyle: TextStyle(
                                        color: Colors
                                            .black, // Change text color based on selection
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
                                            side:
                                                BorderSide(color: Colors.white),
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
                                              borderRadius:
                                                  BorderRadius.circular(
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
