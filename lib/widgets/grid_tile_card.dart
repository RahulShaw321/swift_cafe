import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe_app/widgets/glassmorphism.dart';
import 'package:swift_cafe_app/widgets/noisy_background.dart';

class GridTileCard extends StatelessWidget {
  const GridTileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.bottom;
    return Card(
        margin: EdgeInsets.symmetric(horizontal: deviceHeight * 0.006),
        elevation: 4, // Slight elevation for a raised effect
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(
              deviceHeight * 0.008), // Smooth, rounded corners
        ),
        color: Colors.transparent,
        child: Glassmorphism(
          roundedEdges: deviceHeight * 0.008,
          widget: NoisyBackground(
            deviceHeight: deviceHeight,
            ForegroundWidget: Stack(
              children: [
                // Linear Gradient Overlay with Opacity
                Opacity(
                  opacity: 0.35, // Controls overall opacity of the gradient
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 1.0), // Full white
                          Color.fromRGBO(
                              255, 255, 255, 0.33), // Semi-transparent white

                          Color.fromRGBO(255, 255, 255, 0.8),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: deviceHeight * 0.005,
                      vertical: deviceHeight * 0.018),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    
                    children: [
                      // Image with Shadow
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape
                              .circle, // Circular container for the image
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.3), // Shadow color
                              offset: const Offset(2, 2), // Shadow position
                              blurRadius: 4, // Blur effect for smoothness
                              spreadRadius:
                                  -1, // Slight spread for better visibility
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/cappuccino.png',
                          height: deviceHeight * 0.145, // Consistent size
                          width: deviceHeight * 0.145,
                          fit: BoxFit.cover, // Ensure image fills the space
                        ),
                      ),
                    

                      Padding(
                        padding: EdgeInsets.only(left: deviceHeight * 0.01),
                        child: Row(
                          
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Coffee Name
                                Text(
                                  'Hot Cappuccino',
                                  style: GoogleFonts.inter(
                                    fontSize: deviceHeight * 0.022,
                                    color: const Color(0xFFCDCDCD),
                                  ),
                                ),
                                //Coffee Description
                                Text(
                                  'Espresso, Steamed Milk',
                                  style: GoogleFonts.inter(
                                    fontSize: deviceHeight * 0.014,
                                    color: Colors.black,
                                  ),
                                ),
                        
                                // Rating and Add Button Row
                                Text(
                                  '4.9 ⭐ (458)',
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: deviceHeight * 0.014,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              padding: EdgeInsets.only(top: deviceHeight * 0.04),
                              icon:  Icon(Icons.add_box_rounded, size:deviceHeight * 0.04, ),
                              color: Colors.green,
                              splashRadius: 5,
                              splashColor: Colors.white,
                             
                              
                              onPressed: () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}






// Card(
//   elevation: 4, // Slight elevation for a raised effect
//   color: Colors.transparent, // Transparent to show noise background
//   shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(12), // Smooth, rounded corners
//   ),
//   child: ClipRRect(
//     borderRadius: BorderRadius.circular(12), // Clip the child to match the card's shape
//     child: NoisyBackground(
//       deviceHeight: deviceHeight, // Apply the noise texture
//       ForegroundWidget: Container(
//         padding: const EdgeInsets.all(12), // Internal padding
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(
//             color: Colors.white.withOpacity(0.25),
//             width: 1, // Subtle border
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.1),
//               blurRadius: 24,
//               offset: const Offset(4, 4), // Shadow to the bottom-right
//             ),
//             BoxShadow(
//               color: Colors.black.withOpacity(0.2),
//               blurRadius: 24,
//               spreadRadius: -1,
//               offset: const Offset(-4, -4), // Inverted shadow for depth
//             ),
//           ],
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Image with Shadow
//             Container(
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle, // Circular container for the image
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.25), // Shadow color
//                     offset: const Offset(2, 4), // Shadow position
//                     blurRadius: 8, // Blur effect for smoothness
//                     spreadRadius: 1, // Slight spread for better visibility
//                   ),
//                 ],
//               ),
//               child: ClipOval(
//                 child: Image.asset(
//                   'assets/images/cappuccino.png',
//                   height: 80, // Consistent size
//                   width: 80,
//                   fit: BoxFit.cover, // Ensure image fills the space
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10), // Spacing between elements

//             // Coffee Name
//             Text(
//               'Hot Cappuccino',
//               style: GoogleFonts.inter(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             const SizedBox(height: 5),

//             // Coffee Description
//             Text(
//               'Espresso, Steamed Milk',
//               style: GoogleFonts.inter(
//                 fontSize: 14,
//                 color: Colors.white70,
//               ),
//             ),
//             const SizedBox(height: 10),

//             // Rating and Add Button Row
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   '4.9 ⭐ (458)',
//                   style: GoogleFonts.inter(
//                     color: Colors.yellow,
//                     fontSize: 14,
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 IconButton(
//                   icon: const Icon(Icons.add_circle, size: 28),
//                   color: Colors.green,
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   ),
// );
// ///