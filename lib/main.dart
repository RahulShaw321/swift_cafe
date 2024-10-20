import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swift_cafe_app/pages/login_screen.dart';
import 'package:swift_cafe_app/pages/home_screen.dart';
import 'package:swift_cafe_app/pages/product_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // GoRouter instance with routes
  final GoRouter _router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/product',
        builder: (context, state) => const ProductPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router, // Set the GoRouter configuration
      title: 'Swift Café',
      theme: ThemeData.dark(),
    );
  }
}
