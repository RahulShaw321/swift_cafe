import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe_app/coffees_list.dart';
import 'package:swift_cafe_app/widgets/custom_search_bar.dart';
import 'package:swift_cafe_app/widgets/grid_tile_card.dart';
import 'package:swift_cafe_app/widgets/list_view_card.dart';
import 'package:swift_cafe_app/widgets/noisy_background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    final popBeveragesImg = [
      'assets/images/cup.png',
      'assets/images/cappuccino.png',
      'assets/images/americano.png'
    ];

    return WillPopScope(
      onWillPop: ()async{
        context.pop(context);
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            // Background Image
            Image.asset(
              "assets/images/background_img.jpg",
              height: deviceHeight,
              width: deviceWidth,
              fit: BoxFit.cover,
            ),
      
            // Gradient Overlay
            Opacity(
              opacity: 0.5,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(1, 1, 1, 0),
                      Color.fromRGBO(207, 123, 75, 0.51), // Coffee tones
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
      
            // Main Content with Blur Effect
            ClipRRect(
              borderRadius: BorderRadius.circular(deviceHeight * 0.02),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12), // Blur effect
                child: NoisyBackground(
                  deviceHeight: deviceHeight,
                  ForegroundWidget: SafeArea(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Top Bar with Date, User Info, and Cart
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: deviceWidth * 0.035,
                                vertical: deviceHeight * 0.01),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.waving_hand,
                                          color: Colors.yellow,
                                        ),
                                        SizedBox(
                                          width: deviceWidth * 0.02,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '20/12/2022',
                                              style: GoogleFonts.inter(
                                                fontSize: deviceHeight * 0.015,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              'Joshua Scanlan',
                                              style: GoogleFonts.inter(
                                                fontSize: deviceHeight * 0.02,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: deviceWidth * 0.11,
                                          height: deviceWidth * 0.11,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white70,
                                              padding: const EdgeInsets.symmetric(
                                                vertical: 4,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        deviceHeight * 0.01),
                                              ),
                                            ),
                                            child: Icon(
                                              Icons.shopping_basket_outlined,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: deviceWidth * 0.03,
                                        ),
                                        CircleAvatar(
                                          radius: deviceWidth * 0.05,
                                          backgroundColor: Colors.green,
                                          foregroundImage: AssetImage(
                                              'assets/images/user.jpg'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: deviceHeight * 0.03),
                                // Search Bar
                                const CustomSearchBar(),
                              ],
                            ),
                          ),
      
                          SizedBox(height: deviceHeight * 0.02),
                          Container(
                            width: double
                                .infinity, // Makes it fit the full width of the device
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(
                                  0.1), // Background color with opacity
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  offset: const Offset(
                                      0, 0), // Slight shadow for depth
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                ),
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.1),
                                  offset: const Offset(
                                      0, 0), // Light highlight shadow
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(deviceHeight * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Section: Most Popular Beverages Title
                                  Text(
                                    'Most Popular Beverages',
                                    style: GoogleFonts.inter(
                                      fontSize: deviceHeight * 0.02,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: deviceHeight * 0.02),
      
                                  // Grid of Beverages
                                  SizedBox(
                                    height: deviceHeight * 0.3,
                                    child: GridView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 3,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 1,
                                        childAspectRatio: 1.1,
                                      ),
                                      itemBuilder: (context, index) {
                                        return GridTileCard(
                                          deviceHeight: deviceHeight,
                                          imgDir: popBeveragesImg[index],
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: deviceWidth * 0.035,
                                vertical: deviceHeight * 0.002),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: deviceHeight * 0.02,
                                ),
                                Text(
                                  'Get it instantly',
                                  style: GoogleFonts.inter(
                                    fontSize: deviceHeight * 0.02,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Column(
                                  children: coffeeItems.map((coffee) {
                                    return ListViewCard(
                                      imgDirectory: coffee['image'],
                                      coffeeName: coffee['name'],
                                      description: coffee['details'],
                                      deviceHeight: deviceHeight,
                                      onPressed:(){
                                        context.go('/product');
                                      }
                                    );
                                  }).toList(),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Blurred Bottom Navigation Bar
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0), // Add margin from edges
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(deviceHeight * 0.02), // Rounded edges
                  child: BackdropFilter(
                    filter:
                        ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Blur effect
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5), // Transparent black
                        borderRadius: BorderRadius.circular(deviceHeight * 0.02),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildNavItem(Icons.home_outlined, true),
                          _buildNavItem(Icons.person_outline, false),
                          _buildNavItem(Icons.wallet_outlined, false),
                          _buildNavItem(Icons.shopping_basket_outlined, false),
                          _buildNavItem(Icons.support_agent_outlined, false),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildNavItem(IconData icon, bool isSelected) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      !isSelected
          ? Icon(
              icon,
              color: Colors.white,
              size: 28,
            )
          : buildCircularAvatar(icon)
    ],
  );
}

Widget buildCircularAvatar(IconData icon) {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.white.withOpacity(0.5), // Circular border color
        width: 0.4, // Border width
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.2), // Shadow color
          blurRadius: 3, // Shadow blur effect
          offset: Offset(0, 0), // Shadow position
        ),
      ],
    ),
    child: CircleAvatar(
      child: Icon(icon, size: 28),
      foregroundColor: Colors.white,
      backgroundColor: Colors.black.withOpacity(0.5), // Transparent background
    ),
  );
}
