import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:swift_cafe_app/widgets/custom_search_bar.dart';
import 'package:swift_cafe_app/coffees_list.dart'; // Assuming this contains your coffee data

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.bottom;

    return Scaffold(
     
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/background_img.jpg",fit: BoxFit.cover,),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: SizedBox(
              height: deviceHeight,
              child: Column(
                children: [
                  SizedBox(
                    height: deviceHeight * 0.075,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(deviceHeight * 0.04),
                            child: const Icon(
                              Icons.waving_hand,
                              color: Colors.yellow,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                DateTime.now()
                                    .toLocal()
                                    .toString()
                                    .split(' ')[0],
                                style: TextStyle(
                                  fontSize: deviceHeight * 0.0148,
                                  color: Colors.white.withOpacity(0.65),
                                ),
                              ),
                              Text(
                                'Username',
                                style: TextStyle(
                                  fontSize: deviceHeight * 0.025,
                                  color: Colors.white.withOpacity(0.65),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(deviceHeight * 0.04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.shopping_bag,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: const Icon(Icons.person, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: deviceHeight * 0.022,
                    ),
                    child: const CustomSearchBar(),
                  ),
                  // Horizontal scrolling list
                  SizedBox(
                    height: deviceHeight * 0.25, // Adjust height as needed
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:
                          coffeeItems.length, // Replace with your list length
                      itemBuilder: (context, index) {
                        final coffee =
                            coffeeItems[index]; // Replace with your coffee data
                        return Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 8), // Margin between cards
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(10),
                                  ),
                                  child: Image.asset(
                                    coffee[
                                        'image']!, // Replace with your image path
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      coffee[
                                          'name']!, // Replace with coffee name
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors
                                            .black, // Change to suit your design
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      coffee[
                                          'details']!, // Replace with coffee details
                                      style: const TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
