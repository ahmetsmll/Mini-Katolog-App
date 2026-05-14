import 'dart:convert';
import 'dart:io';
import '../models/product.dart';

class ApiService {
  final String apiUrl = "https://wantapi.com/products.php";

  Future<List<Product>> fetchProducts() async {
    final client = HttpClient();
    try {
      final request = await client.getUrl(Uri.parse(apiUrl));
      final response = await request.close();

      if (response.statusCode == 200) {
        final responseBody = await response.transform(utf8.decoder).join();
        final dynamic jsonData = json.decode(responseBody);

        if (jsonData is Map && jsonData.containsKey('data')) {
          final List<dynamic> productsList = jsonData['data'];
          return productsList.map((item) => Product.fromJson(item)).toList();
        } else {
          throw Exception("Veri 'data' anahtarı altında bulunamadı.");
        }
      } else {
        throw Exception("Sunucu Hatası: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Bağlantı hatası: $e");
    } finally {
      client.close();
    }
  }
}
