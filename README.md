# 🛍️ Mini Katolog App

**Hızlı, Şık ve Kullanıcı Odaklı Dijital Vitrin**

Bu uygulama, mobil alışveriş deneyimini en sade ve estetik haliyle sunmak için geliştirilmiştir. Karmaşık yapılar yerine doğrudan ürüne ve görsel kaliteye odaklanan bir kullanıcı deneyimi sağlar.

---

## 🔥 Temel Özellikler

* **🎯 Kusursuz Görsel Deneyim:** Ana sayfadaki kampanya banner'ı, her ekran boyutuna tam uyum sağlar. Görseller asla kırpılmaz, esnemez ve orijinal oranlarını koruyarak (`BoxFit.fitWidth`) en yüksek kalitede görüntülenir.
* **🔍 Akıllı Arama Sistemi:** Kullanıcılar aradıkları ürünü yazmaya başladıkları anda sonuçlar gerçek zamanlı olarak filtrelenir. Hızlı ve akıcı bir arama motoru deneyimi sunar.
* **📐 Modern Tasarım Çizgileri:** Uygulamanın tüm görsel bileşenleri ve ürün kartları, modern tasarım standartlarına uygun şekilde yumuşatılmış köşelere (`BorderRadius`) sahiptir.
* **⚡ Dinamik Veri Akışı:** Uygulama, gücünü **WantAPI** altyapısından alır. Ürün bilgileri, fiyatlar ve stok durumları anlık olarak senkronize edilir.
* **🛡️ Robust Altyapı:** API'den gelen veriler titizlikle işlenir; bağlantı hataları veya beklenmedik veri yapılarında bile uygulama kararlılığını korur ve kullanıcıyı doğru şekilde yönlendirir.

---

## 🛠️ Teknoloji Yığını

* **Framework:** Google Flutter (Yüksek performanslı arayüz motoru)
* **Veri Kaynağı:** WantAPI (REST API servisleri)
* **Paketler:** `http` kütüphanesi üzerinden asenkron veri iletişimi.
* **State Management:** Provider pattern ile durum yönetimi

---

## 📋 Flutter Sürümü ve Gereksinimler

* **Flutter Sürümü:** 3.13.0 ve üzeri
* **Dart Sürümü:** 3.1.0 ve üzeri
* **Min SDK (Android):** API Level 21 (Android 5.0)
* **Min SDK (iOS):** iOS 11.0 ve üzeri
* **Desteklenen Platformlar:** Android, iOS, Web, Windows, Linux, macOS

---

## 🚀 Projeyi Çalıştırma Adımları

### 1. Ön Koşullar
Aşağıdaki programlar bilgisayarınızda kurulu olmalıdır:
- **Git** (versiyon kontrol için)
- **Flutter SDK** (https://flutter.dev/docs/get-started/install adresinden indirebilirsiniz)
- **Android Studio** veya **VS Code** (IDE olarak)
- **Emulator** veya **Fiziksel cihaz** (test için)

### 2. Projeyi İndirme
```bash
git clone <proje-repository-url>
cd mini_katalog
```

### 3. Bağımlılıkları Yükleme
```bash
flutter pub get
```

### 4. Projeyi Çalıştırma
```bash
# Tüm cihazları listele
flutter devices

# Belirli bir cihazda çalıştır
flutter run -d <device-id>

# Bağlı ilk cihazda çalıştır
flutter run
```

### 5. Üretim Build'i Oluşturma

**Android için:**
```bash
flutter build apk --release
# Çıktı: build/app/outputs/flutter-apk/app-release.apk
```

**iOS için:**
```bash
flutter build ios --release
# Çıktı: build/ios/iphoneos/Runner.app
```

### 6. Geliştirme Sırasında Hot Reload Kullanma
```bash
flutter run
# Kodu düzenleyin ve Ctrl+S (veya Cmd+S) tuşuna basın = Hot Reload
# Değişiklikler anında görüntülenir
```

---

## 📸 Uygulama Ekran Görüntüleri

<img src="app_screenshots/Screenshot_1778714822.png" width="248" height="550"> <img src="app_screenshots/Screenshot_1778715140.png"  width="248" height="550"> <img src="app_screenshots/Screenshot_1778715148.png"  width="248" height="550"> <img src="app_screenshots/Screenshot_1778715163.png"  width="248" height="550">

> **Not:** Görseller cihaz genişliğine tam uyum sağlayacak şekilde optimize edilmiştir.

---

## 📋 Özet Yetenekler
* ✅ Orijinal oranları korunan, tam genişlikte akıllı banner.
* ✅ Anlık ürün filtreleme ve arama motoru.
* ✅ Göze hitap eden modern köşe yumuşatmaları.
* ✅ Hata toleranslı veri işleme mimarisi.

---

## 📄 Hakkında
Bu proje, dijital bir mağaza vitrininin en verimli ve estetik şekilde nasıl sunulabileceğini kanıtlamak amacıyla geliştirilmiştir. Tüm ürün verileri eğitim amaçlı olarak **WantAPI** üzerinden çekilmektedir.
