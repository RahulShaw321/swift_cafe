import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:swift_cafe_app/widgets/custom_search_bar.dart';
import 'package:swift_cafe_app/coffees_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/background_img.png"),
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
                            child: Icon(
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
                                    color: Colors.white.withOpacity(0.65)),
                              ),
                              Text(
                                'Username',
                                style: TextStyle(
                                    fontSize: deviceHeight * 0.025,
                                    color: Colors.white.withOpacity(0.65)),
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
                                icon: Icon(
                                  Icons.shopping_bag,
                                  size: 40,
                                )),
                            CircleAvatar(
                              child: Icon(Icons.person),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceHeight * 0.022),
                      child: const CustomSearchBar()),
                     
               
                ],
              ),
              
            ),
          ),
             
        ],
      ),
    );
  }
}
