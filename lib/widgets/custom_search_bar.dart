import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // White background
        borderRadius: BorderRadius.circular(12), // Slightly rounded corners
        border: Border.all(color: Colors.grey.shade300), // Light grey border
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.grey), // Search icon
            onPressed: () {
              // Add search action here
            },
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search favorite Beverages',
                hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.3), fontSize: 15),
                border: InputBorder.none, // No border on TextField
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10), // Vertical padding
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.filter_list_outlined,
                color: Colors.grey), // Filter icon
            onPressed: () {
              // Add filter action here
              print('Filter button tapped');
            },
          ),
        ],
      ),
    );
  }
}
