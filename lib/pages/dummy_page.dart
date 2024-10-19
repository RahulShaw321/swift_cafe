import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              top: deviceHeight * 0.35,
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
                      height: deviceHeight * 0.65,
                      width: deviceWidth,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Title and Rating Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            ToggleButtons(
                              isSelected: [true, false, false, false],
                              selectedColor: Colors.white,
                              fillColor: Colors.green,
                              borderRadius: BorderRadius.circular(8),
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Text('Full'),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Text('1/2 Full'),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Text('3/4 Full'),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Text('1/4 Full'),
                                ),
                              ],
                              onPressed: (int index) {
                                // Handle selection logic here
                              },
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
                              spacing: 8,
                              children: [
                                ChoiceChip(
                                  label: const Text('Skim Milk'),
                                  selected: false,
                                ),
                                ChoiceChip(
                                  label: const Text('Almond Milk'),
                                  selected: false,
                                ),
                                ChoiceChip(
                                  label: const Text('Soy Milk'),
                                  selected: false,
                                ),
                                ChoiceChip(
                                  label: const Text('Lactose Free Milk'),
                                  selected: false,
                                ),
                                ChoiceChip(
                                  label: const Text('Full Cream Milk'),
                                  selected: true,
                                  backgroundColor: Colors.green,
                                ),
                                ChoiceChip(
                                  label: const Text('Oat Milk'),
                                  selected: false,
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
                                ChoiceChip(
                                  label: const Text('Sugar X1'),
                                  selected: false,
                                ),
                                ChoiceChip(
                                  label: const Text('Sugar X2'),
                                  selected: true,
                                  backgroundColor: Colors.green,
                                ),
                                ChoiceChip(
                                  label: const Text('½ Sugar'),
                                  selected: false,
                                ),
                                ChoiceChip(
                                  label: const Text('No Sugar'),
                                  selected: false,
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),

                            // Priority and Submit Button Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: false,
                                      onChanged: (value) {
                                        // Handle checkbox change
                                      },
                                      activeColor: Colors.green,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      'High Priority',
                                      style: GoogleFonts.inter(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                ElevatedButton(
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
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                  child: const Text('Submit'),
                                ),
                              ],
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
