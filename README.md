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

========================================== Tugas PBP 9 ==================================================

1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
   Iya, kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Pemgambilan data JSON dapat dilakukan dengan menggunakan bahasa pemrograman yang mendukung pengolahan JSON melalui library khusus. Jika kita membuat model, kita membutuhkan analisis data yang lebih dalam, seperti machine learning. Untuk melihat permasalahan apakah pengambilan data JSON lebih baik daripada membuat model, ini akan sesuai dengan kebutuhan dan tujuan kita. Jika kita ingin mengakses atau menampilkan data JSON yang diterima di sumber lain, kita lebih baik menggunakan pengambilan data JSON. Jika kita ingin menganalisis data lebih lanjut atau membuat rekomendasi, kita lebih baik membuat model

2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
   CookieRequest berfungsi untuk mengelola permintaan request
   CookieRequest berperan dalam mengelola permintaan (request) yang terkait dengan cookie di dalam aplikasi. Kelas ini bertugas mengatur aspek-aspek yang terkait dengan data yang disimpan di sisi klien untuk melacak informasi sesi pengguna. Pentingnya membagikan instance CookieRequest ke semua komponen di aplikasi adalah untuk memastikan bahwa pengelolaan cookie dilakukan secara seragam di seluruh komponen, sehingga informasi sesi pengguna dapat dipelihara dengan konsistensi.

3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
   Pengambilan data dari JSON dan menampilkannya di Flutter melibatkan beberapa langkah umum, yaitu:

- Melakukan permintaan HTTP ke API atau sumber JSON yang menggunakan paket seperti `http` atau paket manejemen keadaan global seperti `provider` atau `get`
- Mengonversi JSON menjadi objek dart dengan menggunakan `dart:convert`
- Menggunakan mekanisme manejemen state seperti `setState` atau paket-paket manejemen state seperti `provider`, `get`, atau `bloc` untuk menyimpan dan mengelola data secara global atau lokal
- Menampilkan data dalam widget dengan menggunakan widget
- Menangani situasi khusus seperti kegagalan permintaan atau manipulasi data sebelum ditampilkan

4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
   Mekanisme autentikasi dari input data akun pada Flutter ke Django melibatkan beberapa langkah, yaitu:

- Bagian Flutter:

  - Input Data Akun:
    - Pengguna memasukkan data akun seperti nama pengguna dan kata sandi melalui antarmuka pengguna Flutter.
  - Permintaan HTTP ke Endpoint Autentikasi Django:
    - Flutter membuat permintaan HTTP ke endpoint autentikasi Django untuk memverifikasi kredensial pengguna.
    - Kita dapat menggunakan paket seperti http untuk membuat permintaan HTTP.

- Bagian Django:

  - Handle Permintaan Autentikasi:
    - Di server Django, buat endpoint untuk menangani
      permintaan autentikasi.
    - Menggunakan Django's built-in authenticate dan login untuk memeriksa dan mengotentikasi pengguna.
  - Menggunakan Django REST Framework (Opsional):
    - Jika Anda menggunakan Django REST Framework, Anda dapat membuat endpoint menggunakan `APIView` untuk memudahkan pengelolaan autentikasi.

- Dalam tugas ini,
  - Pertama-tama, kita menggunakan paket pbp_django_auth, sebuah CookieRequest baru dibuat dan dimasukkan ke dalam variabel yang dinamai request. Pada file login.dart, aplikasi akan meminta input teks yang berupa username dan password. Saat formulir tersebut disubmit, fungsi akan dipanggil di mana username dan password akan dikirimkan melalui permintaan (request) ke proyek Django untuk melakukan autentikasi dan login pengguna. Jika proses tersebut berhasil, akan menghasilkan JsonResponse yang menyatakan keberhasilan, sementara jika gagal akan mengembalikan respons yang menyatakan kegagalan.

5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

- `TextField`: Digunakan untuk menerima input teks dari pengguna. Dalam tugas ini, widget ini dimanfaatkan untuk mengumpulkan informasi username dan password selama proses login dan registrasi

- `SizedBox`: DIgunakan untuk menciptakan ruang atau jarak tertentu dalam antarmuka pengguna. Pada tugas ini, digunakan untuk memberikan spasi atau pemisah yang dibutuhkan antara widget TextField untuk username dan password.

- `ElevatedButton`: DIgunakan untuk membuat tombol yang mendapatkan efek elevasi ketika ditekan. Dalam tugas ini, widget ini digunakan sebagai tombol submit pada tahap login dan registrasi, memungkinkan pengguna untuk mengirimkan informasi mereka.

- `TextButton`: Digunakan untuk menciptakan tombol yang berupa teks tanpa latar belakang. Dalam tugas ini, digunakan untuk tombol registrasi, menawarkan pengguna opsi untuk melakukan tindakan tertentu dengan menekan teks tersebut.

- `ListView.builder`: Digunakan untuk menghasilkan daftar item yang dapat digulirkan. Dalam tugas ini, widget ini digunakan untuk menampilkan daftar item yang ada, memberikan pengguna kemampuan untuk melihat konten lebih dari yang terlihat pada layar.

- `Text`: Digunakan untuk menciptakan elemen teks. Pada tugas ini, digunakan untuk menampilkan teks detail ketika item pada daftar item ditekan, memberikan informasi tambahan atau rincian terkait item yang dipilih.

6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

- Mengecek deployment dari tugas Django
- Membuat halaman login pada proyek tugas Flutter dengan membuat django-app authentication pada project DJango, menambahkan authentication ke INSTALLED_APPS di main project settings.py, menjalankan pip install django-cors-headers, menambahkan `corsheaders` ke INSTALLED_APPS, dan menambahkan `corsheaders.middleware.CorsMiddleware` di settings.py aplikasi
- Menambah variable pada setting.py
- Membuat fungsi di views.py authentication dan routing url di authentication dan hana_grosir
- Menginstall package untuk flutter
- Menggunakan package dengan memodifikasi root widget untuk menyediakan `CookieRequest` library ke semua child widgets dengan menggunakan `Provider`
- Membuat file login.dart di screens dan mengisinya dengan kode untuk laman login dan mengubah `home: LoginPage()` di main.dart
- Membuat model kustom dengan cara membuat endpoint `JSON` dan menyalin data `JSON` ke situs web `Quicktype`
- Mengubah setup name menjadi `Product`, source type menjadi `JSON`, dan language menjadi `Dart` pada situs web Quicktype
- Menerapkan Fetch Data dari Django untuk ditampilkan ke Flutter dengan cara menambahkan package http, menambahkan kode untuk memperbolehkan akses Internet pada aplikasi Flutter yang sedang dibuat di file `android/app/src/main/AndroidManifest.xml`
- Melakukan fetch data dari django dengan membuat file `list_product.dart` di folder `lib/screens`, menambahkan impor library yang dibutuhkan dan kode yang dibutuhkan
- Menambahkan halaman `list_product.dart` ke `widgets/left_drawer.dart `
- Mengubah fungsi tombol Lihat Item agar mengarahkan ke halaman ProductPage
- Impor file yang dibutuhkan dan menambahkan ProductPage ke `left_drawer.dart `dan `shop_card.dart`
- Mengintegrasikan form flutter dengan layanan django dengan cara membuat views baru di views.py pada main dengan nama `create_product_flutter` dan menambahkan routing di `urls.py`
- DI flutter kita menghubungkan halaman `shoplist_form.dart` dengan `CookieRequest` dan mengubah perintah pada `onPressed()` button sehingga akan routing ke link django
- Mengimplementasikan fitur logout dengan menambahkan fungsi di `authentication/views.py` dan routing di urls.py
- Di Flutter, menambahkan kode `request` dan import di `lib/widgets/shop_card.dart`, mengubah perintah `onTap` pada widget `Inkwell` menjadi `onTap: () async`, dan menambahkan kode di dalam async
- Untuk dapat melihat detail per item, kita perlu membuat file baru bernama detail_page.dart yang akan mengurusi semua detail item dan pada list_product.dart, ditambahkan kode untuk membuat nama item dapat di klik dan akan masuk ke detail_page.dart untuk menampilkan detail per item

========================================= Selesai Tugas PBP 9 ===========================================

========================================== Tugas PBP 8 ==================================================

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
   `Navigator.push()` dan `Navigator.pushReplacement()` adalah dua metode yang digunakan dalam Flutter untuk mengelola navigasi screen dalam aplikasi. Perbedaan utama antara kedua metode tersebut adalah:

- Navigator.push()

  - Metode ini digunakan untuk menambahkan layar baru ke dalam navigasi
  - Saat kita menggunakan `Navigator.push()`, layar baru akan ditambahkan di atas layar saat ini dalam numpukan navigasi
  - User masih dapat kembali ke layar sebelumnya dengan menekan tombol `Back` pada perangkat atau dengan menggunakan fungsi `Navigator.pop()`
  - Contoh penggunaan:
    `Navigator.push(`
    `context,`
    `MaterialPageRoute(builder: (context) => NewScreen()),);`

- Navigator.pushReplacement()
  - Metode ini juga digunakan untuk menambahkan layar baru ke dalam tumpukan navigasi
  - Tetapi, perbedaan utamanya terletak pada setelah menggunakan `Navigator.pushReplacement()`, layar sebelumnya dalam tumpukan akan dihapus, sehingga user tidak dapat kembali ke layar sebelumnya
  - Ini berguna ketika kita ingin menggantikan layar yang ada dengan layar yang baru dan menghapusnya dari tumpukan
  - Contoh penggunaan:
    `Navigator.pushReplacement(`
    `context,`
    `MaterialPageRoute(builder: (context) => NewScreen()),`
    `);`
  - Ini biasa digunakan untuk layar login agar user tidak dapat kembali ke layar login setelah login berhasil

2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

- Container
  - Ini digunakan untuk mengelilingi dan mengatur tata letak anak-anaknya.
  - Ini dapat digunakan sebagai wadah umum untuk widget lainnya dan memberikan kontrol atas properti, seperti margin, dekorasi, dan padding.
- Row dan Column
  - Row digunakan untuk menempatkan widget sejajar secara horizontal sedangkan column digunakan untuk menempatkan widget secara vertikal. Keduanya berguna untuk menyusun eidget dalam satu arah.
- ListView
  - Ini digunakan untuk menampilkan aftar widget dalam daftar gulir.
  - Ini berguna saat kita memiliki banyak item yang ingin ditampilkan dalam satu tampilan
- GridView
  - Ini digunakan untuk menampilkan eidget dalam bentuk grid.
  - Ini berguna untuk menata item dalam bentuk grid, seperti galeri gambar
- Stack
  - Ini digunakan untuk menempatkan widget di atas widget lainnya.
  - Ini berguna ketika kita ingin menumpuk suatu widget di atas widget yang lainnya
- Expanded dan Flexible
  - Ini digunakan dalam kombinasi dengan `Row dan Column` untuk memberikan fleksibilitas dalam pengaturan ruang yang dibagi antara widget

3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

- TextFormField
  -Ini digunakan untuk menerima input berupa teks, seperti nama produk, harga, dan deskripsi.
  - TextFormField memberikan antarmuka user yang nyaman dan memungkinkan validasi teks yang dimasukkan.
- ElevatedButton
  - Ini digunakan sebagai tombol untuk menyimpan atau mengirimkan data formulir.
  - ElevatedButton memberikan tampilan yang terangkat dan memudahkan user untuk mengidentifikasi tindakan yang dapat dilakukan.
- AlertDialog
  - Ini digunakan untuk menampilkan pesan atau informasi kepada pengguna setelah menyimpan produk.
  - AlertDialog memberikan antarmuka yang bersifat modul dan dapat menahan eksekusi sampai user memberikan tanggapan.
- ListView.builder
  - Ini digunakan untuk menampilkan daftar produk.
  - ListView.builder memungkinkan pembuatan daftar item yang efisien dan dinamis sesuai dengan jumlah item yang ada.
- GridView.count
  - Ini digunakan untuk menampilkan menu utama dengan tata letak grid.
  - GridView.count memberikan cara yang efisien untuk menata elemen-elemen dalam bentuk grid dengan jumlah kolom yang ditentukan.
- Column
  - Ini digunakan untuk mengatur elemen secara vertikal dari atas ke bawah
  - Digunakan di kode untuk menata daftar item pada formulir
- Stack
  - Ini digunakan untuk menumpuk elemen-elemen di atas satu sama lain
  - Bisa digunakan ketika ingin menumpuk gambar, icon, dan teks di satu tumpukan
- Card
  - Ini digunakan untuk mengelilingi elemen-elemen seperti gambar, teks, atau tombol untuk membuat tampilan kartu
  - Sering digunakan dalam daftar item atau dalam konteks informasi yang terkandung dalam satu blok visual
- Padding
  - Ini digunakan untuk menambahkan jarak (padding) di sekeliling anaknya
    -Bisa digunakan ketika kita ingin mengatur ruang antara elemen-elemen dalam tata letak

4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
   Penerapan Clean Architecture pada aplikasi Flutter melibatkan pemisahan kode menjadi lapisan-lapisan yang independen dan tergantung pada aturan-aturan tertentu. Clean Architecture terdiri dari tiga lapisan utama, yaitu:

- Lapisan Presentasi (Presentation Layer):

  - Lapisan ini bertanggung jawab untuk menampilkan data kepada pengguna dan menerima input dari pengguna.
  - Di dalam lapisan ini ada widget-widget Flutter, seperti `StatefulWidget` atau `StatelessWidget`
  - Di dalam lapisan ini ada Presenter atau ViewModel yang bertanggung jawab untuk mengelola logika aplikasi dan berkomunikasi dengan lapisan use case.

- Lapisan Domain (Domain Layer):
  - Lapisan ini berisi bisnis logika dan aturan aplikasi.
  - Di dalam lapisan ini ada model domain, aturan bisnis, dan use case (interactors)
  - Di lapisan ini tidak boleh ada ketergantungan ke infrastruktur atau detail presentasi
- Lapisan Data (Data Layer):
  - Lapisan ini bertanggung jawab untuk mengambil dan menyimpan data.
  - Di dalam lapisan ini ada Repository, DataSource, dan implementasi infrastruktur seperti API calls, database queries, dan penyimpanan lokal
  - Lapisan ini berkomunikasi dengan lapisan domain melalui interface dan tidak tahu apa-apa tentang lapisan presentasi.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

- Menambahkan drawer menu untuk navigasi dengan membuat folder baru dengan nama widgets dan file baru didalamnya dengan nama left_drawer.dart
- Menambah kode yang dibutuhkan dan import yang diperlukan misalnya `import 'package:flutter/material.dart';` dan `import 'package:hana_grosir/screens/menu.dart';`
- Memasukkan routing untuk halaman-halaman yang diimpor ke bagian routing dan menghias drawer dengan memasukkan drawer header
- Routing yang dipakai adalah halaman utama, tambah item, dan daftar item. Routing halaman utama akan pergi ke halaman utama, routing tambah item akan perke ke tambah item, dan routing daftar item akan pergi ke daftar item
- Memasukkan drawer ke dalam halaman menu.dart
- Menambahkan form dan elemn input dengan cara membuat file baru bernama `shoplist_form.dart` dan menambahkan kode ke dalamnya.
- Mengubah widget `Placeholder` dan menabhkan drawer yang sudah dibuat
- Membuat variabel baru bernama`_formKey`lalu menambahkan `_formKey` ke dalam atribut key milik widget Form dan mengisi widget Form dengan filed. Ada juga variabel `_name`, `_price`, `_ammount`, `_description`
- Membuat widget column sebagai child dari `SingleChildScrollView`
- Membuat widget `TextFormField` yang dibungkus oleh `Padding` sebagai salah satu children dari widget Column.
- Menambahkan atribut `crossAxisAlignment` untuk mengatur alignment children dari Column.
- Membuat tiga `TextFormField` yang dibungkus dengan Padding sebagai child selanjutnya dari Column seperti sebelumnya untuk field price, ammount, dan description.
- Di dalam tiap `TextFormField`, akan ada validator yang meng-handle input di formulir, yaitu setiap elemen tidak boleh kosong dan setiap elemen input harus berisi data dengan tipe data atribut modelnya
- Membuat tombol `save` sebagai child selanjutnya dari column dan membungkus tombol ke dalam widget padding dan align
- Menambahkan fungsi `showDialog()` pada bagian `onPressed()` dan memunculkan `AlertDialog` pada fungsi tersebut. Ini akan membuat sebuah `pop-up` setelah menekan tombol save pada halaman formulir tambah item baru
- Menambahkan fitur navigasi pada tombol dengan cara menambahkan kode tambahan pada OnTap di bawah `ScaffoldMessenger` yang menampilkan snackbar. Kode ini berguna untuk navigate ke route yang sesuai dengan nama tombol, yaitu tambah item dan ddaftar item. Di sini menggunakan `Navigator.push`. Kode ini ditambahkan pada widget `ShopItem` di file menu.dart
- Memasukkan file shoplist_form.dart dan menu.dart ke folder screens
- Membuat file baru dengan nama `shop_card.dart` pada folder widgets
- Memindahkan isi widget `ShopItem` pada menu.dart ke file shop_card.dart di folder widgets
- Mengimport semua yang diperlukan
- Membuat file `shop_list_page.dart`yang akan berisi kode untuk bagian daftar produk dan memindahkan file ini ke dalam folder screens

========================================= Selesai Tugas PBP 8 ===========================================
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
  ========================================= Selesai Tugas PBP 7 ===========================================
