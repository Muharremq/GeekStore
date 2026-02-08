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

  // API'den gelen JSON verisini modele dönüştüren factory metodu
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      // Fiyat verisi için tip güvenliği (int/double dönüşümü)
      price: (json['price'] as num).toDouble(),
      imageUrl: json['image'],
      // Rating objesi null kontrolü ve ayrıştırma
      rating: (json['rating'] != null && json['rating']['rate'] != null)
          ? (json['rating']['rate'] as num).toDouble()
          : 0.0,
    );
  }
}

// Global sepet listesi (State management kullanılmadığı için burada tutuluyor)
List<Product> cart = [];
