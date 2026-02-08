# 📱 GeekStore

**GeekStore**, Flutter ile geliştirilmiş, modern arayüze sahip bir mobil e-ticaret ürün kataloğu uygulamasıdır. Kullanıcılara teknolojik ürünleri inceleme, detaylarını görüntüleme ve sepet simülasyonu yapma imkanı sunar.

Bu proje, **REST API** tüketimi, **Asenkron Programlama** ve **Material Design 3** prensipleri kullanılarak geliştirilmiştir.

![Project Banner](https://via.placeholder.com/1000x400/673AB7/ffffff?text=GeekStore+Mobile+App)
*(Not: Buraya uygulamanızın ekran görüntülerini ekleyebilirsiniz)*

## 🚀 Özellikler

* **Dinamik Veri Akışı:** [Fake Store API](https://fakestoreapi.com/) kullanılarak gerçek zamanlı ürün verileri çekilir.
* **Modern UI Tasarımı:** Mor (Purple) ve Gri (Gray) tonlarının hakim olduğu, kullanıcı dostu "Clean Architecture" arayüz.
* **Ürün Listeleme:** `GridView` yapısı ile responsive ürün kartları.
* **Detay Sayfası:** Ürün açıklaması, puanı ve fiyat bilgisini içeren detaylı görünüm.
* **Sepet Yönetimi:** Uygulama içi (In-Memory) çalışan sepet ekleme/çıkarma simülasyonu.
* **Hata Yönetimi:** İnternet bağlantısı veya veri hatalarına karşı kullanıcı bilgilendirme ekranları.

## 🛠️ Kullanılan Teknolojiler

* **Dil:** [Dart](https://dart.dev/)
* **Framework:** [Flutter](https://flutter.dev/)
* **Paketler:**
    * `http`: API istekleri ve veri transferi için.
    * `cupertino_icons`: iOS tarzı ikonlar için.
* **API:** [Fake Store API](https://fakestoreapi.com/products)

## 📂 Proje Yapısı

Proje, sürdürülebilir ve geliştirilebilir olması açısından modüler bir yapıda organize edilmiştir:

```text
lib/
├── models/         # Veri modelleri (Product model ve JSON serileştirme)
├── screens/        # Uygulama ekranları (Home, Detail, Cart)
├── services/       # API iletişim katmanı (HTTP istekleri)
└── main.dart       # Uygulama giriş noktası ve Tema ayarları
```
📸 Ekran Görüntüleri

<img width="364" height="833" alt="image" src="https://github.com/user-attachments/assets/a04ac116-17fb-4976-804f-74b2c863a8d3" />

<img width="366" height="818" alt="image" src="https://github.com/user-attachments/assets/10b1a094-1201-4f1d-bbc3-c15197033e9f" />

<img width="348" height="821" alt="image" src="https://github.com/user-attachments/assets/b5fb1154-f871-48a7-a336-375b279ebec8" />



🏁 Kurulum ve Çalıştırma
Projeyi yerel makinenizde çalıştırmak için aşağıdaki adımları izleyin:

1. Projeyi Klonlayın:
git clone [https://github.com/kullaniciadi/geekstore.git](https://github.com/kullaniciadi/geekstore.git)
cd geekstore

2. Bağımlılıkları Yükleyin:

flutter pub get

3. Uygulamayı Başlatın: Emülatörünüzü açın ve aşağıdaki komutu çalıştırın:

flutter run

📝 Geliştirici Notları
Proje, MVVM desenine uygun olarak, mantıksal işlemlerin (Service) ve arayüzün (UI) birbirinden ayrılması hedeflenerek kodlanmıştır.

Veri akışı için FutureBuilder kullanılarak asenkron veri yönetimi sağlanmıştır.

Tema yönetiminde ThemeData özelleştirilerek projenin renk paleti (Deep Purple & Grey) merkezi hale getirilmiştir.

🤝 Katkıda Bulunma
Bu projeyi Fork'layın.

Yeni bir özellik dalı (branch) oluşturun (git checkout -b feature/YeniOzellik).

Değişikliklerinizi commit edin (git commit -m 'Yeni özellik eklendi').

Dalınızı (branch) Push edin (git push origin feature/YeniOzellik).

Bir Pull Request oluşturun.
