import 'package:flutter/material.dart';
import '../models/product.dart';
import '../models/cart_item.dart';

class CartProvider extends ChangeNotifier {
  final List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  int get cartItemCount => _cartItems.length;

  double get totalPrice {
    return _cartItems.fold(0, (sum, item) => sum + item.totalPrice);
  }

  void addToCart(Product product) {
    final existingItem = _cartItems.firstWhere(
      (item) => item.product.name == product.name,
      orElse: () => CartItem(
        product: Product(
          name: '',
          price: '',
          description: '',
          image: '',
          tagline: '',
          specifications: '',
        ),
      ),
    );

    if (existingItem.product.name.isNotEmpty) {
      existingItem.quantity++;
    } else {
      _cartItems.add(CartItem(product: product));
    }
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cartItems.removeWhere((item) => item.product.name == product.name);
    notifyListeners();
  }

  void updateQuantity(Product product, int quantity) {
    final item = _cartItems.firstWhere(
      (item) => item.product.name == product.name,
    );
    if (quantity <= 0) {
      removeFromCart(product);
    } else {
      item.quantity = quantity;
      notifyListeners();
    }
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
