import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ApiService {
  // FakeStoreAPI'den ürünleri çeken fonksiyon
  Future<List<Product>> fetchProducts() async {
    final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );

    if (response.statusCode == 200) {
      // Sunucudan cevap başarılı geldiyse (200 OK)
      List<dynamic> body = jsonDecode(response.body);

      // JSON listesini Product listesine çevirip döndürüyoruz
      List<Product> products = body
          .map((dynamic item) => Product.fromJson(item))
          .toList();
      return products;
    } else {
      // Hata varsa boş liste veya hata fırlatabiliriz
      throw Exception('Ürünler yüklenemedi!');
    }
  }
}
