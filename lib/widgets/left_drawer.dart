import 'package:flutter/material.dart';
import 'package:hana_grosir/screens/menu.dart';
import 'package:hana_grosir/screens/shoplist_form.dart';
import 'package:hana_grosir/screens/shop_list_page.dart';
import 'package:hana_grosir/widgets/shop_card.dart';
import 'package:hana_grosir/models/item_model.dart';

// TODO: Impor halaman ShopFormPage jika sudah dibuat

class LeftDrawer extends StatelessWidget {
  //const LeftDrawer({super.key})
  //final List<Product> products;

  //const LeftDrawer({Key? key, required this.products}) : super(key: key);
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'Hana Grosir',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Catat seluruh keperluan belanjamu di sini!",
                  // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15, // Ubah ukuran font menjadi 15
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Tambah Produk'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopFormPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.checklist),
            title: const Text('Daftar Produk'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ShopListPage(products: products),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
