# hana_grosir

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

========================================== Tugas PBP 7 ==================================================

1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
   Perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter ada pada kemampuan widget untuk mengelola dan merender perubahan dalam data atau keadaan aplikasi. Untuk lebih rinci, berikut adalah perubahan utamanya:

- Stateless widget
  - Tidak memiliki state(keadaan): Stateless widget tidak memiliki state yang berubah. Stateless widget tidak dapat diperbarui setelah dibuat. Tampilan stateless widget tidak akan berubah seiring berjalannya waktu.
  - Digunakan untuk elemen statis: Stateless widget digunakan untuk membuat elemen antarmuka pengguna yang tidak perlu memiliki perubahan atau diperbarui berdasarkan perubahan data atau interaksi pengguna. Contohnya adalah teks, gambar, dan lain-lain.
  - Kinerja yang baik: Stateless widget lebih efisien dari segi kinerja karena stateless widget tidak perlu memantau perubahan state atau merender ulang saat data berubah
- Stateful widget
  -Mengelola state(keadaan); Stateful widget memiliki state yang berubah dan dapat diperbarui selama siklus hidup aplikasi. Stateful widget digunakan untuk membuat elemen antarmuka pengguna yang perlu diperbarui secara dinamis berdasarkan perubahan data atau interaksi pengguna.
  - Memiliki metode `build` yang dapat diperbarui: Stateful widget memiliki metode `build` yang dapat dipanggil ulang saat kita perlu memperbarui tampilan. Ini memungkinkan developer/pengembang untuk merender ulang widget dengan data terbaru.
  - Contoh penggunaan: Contoh penggunaan stateful widget adalah tombol yang berfungsi untuk menhitung jumlah, widget yang memantau perubahan data real-time, widget yang saat di-klik berubah warna, dan lain-lain.

2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

- Dalam `menu.dart`
  - `MyHomePAge` -> Stateless widget
    - Ini adalah widget utama yang mewakili tampilan halaman beranda atau menu utama dalam aplikasi
    - Memiliki `AppBar`, `SingleChildScrollView`, dan `GridView` yang berisi elemen-elemen `ShopCard`.
  - `ShopItem` -> Class
    - Ini adalah model yang digunakan untuk mewakili elemen-elemen dalam menu toko.
    - Setiap elemen memiliki nama dan ikon yang sesuai
  - `ShopCard` -> Stateless widget
    - Ini adalah widget yang digunakan untuk menampilkan kartu untuk setiap elemen menu toko
    - Menerima `ShopItem` sebagai prop dan menampilkan ikon, nama item, serta memberikan respons ketika ditekan.
- Dalam `main.dart`
  - `MyApp` -> Stateless widget
    - Ini adalah widget yang menginisialisasi aplikasi Flutter
    - Mendefinisikan tema aplikasi menggunakan `MaterialApp` dengan konfigurasi seperti judul, tema, dan halaman beranda
  - `MaterialApp` -> Widget Flutter
    - ni adalah widget yang menginisialisasi apliksi Flutter
    - Mendefinisikan tema dan halaman beranda
  - `AppBar` -> Widget Flutter
    - Ini adalah elemen `AppBar` yang digunakan untuk menampilkan judul aplikasi di bagian atas layar
    - Menyediakan judul "Hana Grosir" dengan latar belakang indigo
  - `ColorScheme` -> Widget Flutter
    - Digunakan untuk menentukan palet warna yang digunakan dalam aplikasi
  - `MyKomePage` -> (MyHomePage())
    Merupakan halaman beranda atau menu utama yang ditampilkan leh aplikasi
- Intinya tugas ini menggunakan widget `MyHomePage`, `ShopItem`, dan `ShopCard` untuk membangun antarmuka pengguna. Dan di dalam `main.dart` ada `MyApp` yang menginisialisasi aplikasi dan mengatur tema keseluruhan

3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

- Menginstal Flutter dan mengistal extension FLutter dan dart di dalam Visual Studio Code
- Membuat proyek Flutter baru dengan nama "hana_grosir" dengan perintah `flutter create <APP_NAME>`dan masuk ke dalam folder appnya
- Membuat repositori baru dan menghubungkan folder ke repositori tersebut
- Membuat file baru bernama `menu.dart` pada direktori `hana_grosir/lib` dan `import 'package:flutter/material.dart';`
- Memindahkan kelas MyHomePage dan \_MyHomePageState dari main.dart ke menu.dart
- Menulis `import 'package:shopping_list/menu.dart';` di main.dart
- Membuat tema aplikasi menjadi warna indigo dengan memasukkan kode `colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),`
- Mengubah sifat widget halaman menu menjadi stateless dengan cara menghapus kode `colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),` menjadi `MyHomePage()`, melakukan perubahan pada bagian `({super.key, required this.title})` menjadi `({Key? key}) : super(key: key);. Hapus final String title;`, dan menghapus fungsi state yang ada di bawah bagian stateless widget
- Menambahkan teks dan card dengan cara men-define tipe pada list, menambahkan barang-barang yang dijual ke dalam list, yaitu Lihat Item, Tambah Item, dan Logout, lalu menambakan kode untuk teks card di dalam widget build.
- Membuat widget stateless baru untuk menampilkan card yang berisi tombol Lihat Item, Tambah Item, dan Logout dengan nama `ShopCard` dan menampilkan SnackBar ketika diklik. Saya menggunakan `ScaffoldMessenger`. Kodenya diisi dengan `content: Text("Kamu telah menekan tombol ${item.name}!")));` sehingga akan sesuai dengan nama tombol yang ditekan
  ========================================= Selesai Tugas PBP 5 ===========================================
