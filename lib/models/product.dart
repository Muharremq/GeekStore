class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final double rating;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.rating,
  });

  // JSON verisini Product nesnesine çeviren fabrika (factory) metodu
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      // Fiyat bazen int bazen double gelebilir, garantiye alıyoruz:
      price: (json['price'] as num).toDouble(),
      imageUrl: json['image'], // API'de resim alanı 'image' olarak geçiyor
      // Rating, API'de { "rate": 3.9, "count": 120 } şeklinde iç içe obje
      rating: (json['rating'] != null && json['rating']['rate'] != null)
          ? (json['rating']['rate'] as num).toDouble()
          : 0.0,
    );
  }
}

// Eski 'final List<Product> products = [...]' listesini sildik çünkü artık internetten çekeceğiz.
// Sepet listesi şimdilik boş kalabilir, yine bellekte tutacağız.
List<Product> cart = [];
