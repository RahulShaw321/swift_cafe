import 'dart:ui';
import 'package:flutter/material.dart';
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

    return Scaffold(
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
                                      IconButton(
                                        icon: const Icon(
                                          Icons.shopping_cart_outlined,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {},
                                      ),
                                      const CircleAvatar(
                                        radius: 20,
                                        child: Icon(Icons.person),
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
                                      return const GridTileCard();
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
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
