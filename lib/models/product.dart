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
}

// Görsellerdeki verilere benzer sahte veriler (Resimler internetten çekilecek)
final List<Product> products = [
  Product(
    id: 1,
    title: "MacBook Pro 16",
    description:
        "Güçlü M3 Max işlemci, 32GB RAM ve 1TB SSD ile profesyonel performans.",
    price: 89999,
    rating: 4.8,
    imageUrl:
        "https://images.unsplash.com/photo-1517336714731-489689fd1ca4?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ),
  Product(
    id: 2,
    title: "Sony WH-1000XM5",
    description:
        "Endüstri lideri gürültü engelleme teknolojisi. 30 saat pil ömrü.",
    price: 8999,
    rating: 4.7,
    imageUrl:
        "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ),
  Product(
    id: 3,
    title: "iPad Air",
    description:
        "M1 çip gücüyle yaratıcılığınızı konuşturun. 10.9 inç Liquid Retina ekran.",
    price: 24999,
    rating: 4.5,
    imageUrl:
        "https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ),
  Product(
    id: 4,
    title: "Apple Watch Series 9",
    description:
        "Daha parlak ekran ve sağlık sensörleri ile hayatınızı takip edin.",
    price: 14999,
    rating: 4.6,
    imageUrl:
        "https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ),
];

// Basit Sepet Listesi (Global değişken olarak tutuyoruz - Eğitim amaçlı)
List<Product> cart = [];
