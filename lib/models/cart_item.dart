import 'product.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});

  double get totalPrice {
    String cleanPrice = product.price
        .replaceAll('\$', '')
        .replaceAll(',', '')
        .trim();
    return (double.tryParse(cleanPrice) ?? 0.0) * quantity;
  }
}
