class Product {
  final String name;
  final String price;
  final String description;
  final String image;
  final String tagline;
  final String specifications;

  Product({
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.tagline,
    required this.specifications,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: (json['name'] ?? 'Bilinmeyen Ürün').toString(),
      price: (json['price'] ?? '0').toString(),
      description: (json['description'] ?? 'Açıklama mevcut değil.').toString(),
      image: (json['image'] ?? 'https://via.placeholder.com/300').toString(),

      tagline: (json['tagline'] ?? '').toString(),

      specifications:
          (json['specifications'] ??
                  '• Orijinal Apple Ürünü\n• 2 Yıl Apple Türkiye Garantili\n• Ücretsiz Kargo ve Kolay İade\n• Kutu içeriği: Şarj kablosu ve belgeler')
              .toString(),
    );
  }
}
