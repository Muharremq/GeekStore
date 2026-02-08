import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ApiService {
  static const String _baseUrl = 'https://fakestoreapi.com/products';

  // Asenkron ürün listesi getirme işlemi
  Future<List<Product>> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      // İstek başarılıysa (HTTP 200) veriyi parse et
      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        return body.map((dynamic item) => Product.fromJson(item)).toList();
      } else {
        throw Exception('API Hatası: ${response.statusCode}');
      }
    } catch (e) {
      // Hata durumunda loglama yapılabilir veya exception fırlatılabilir
      throw Exception('Veri çekme hatası: $e');
    }
  }
}
