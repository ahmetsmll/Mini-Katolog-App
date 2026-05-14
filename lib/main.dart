import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'screens/detail_screen.dart';
import 'screens/cart_screen.dart';
import 'providers/cart_provider.dart';

void main() => runApp(const MiniKatalogApp());

class MiniKatalogApp extends StatelessWidget {
  const MiniKatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mini Katalog',
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/detail': (context) => const DetailScreen(),
          '/cart': (context) => const CartScreen(),
        },
      ),
    );
  }
}
