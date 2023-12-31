import 'package:flutter/material.dart';
import 'package:hana_grosir/screens/login.dart';
import 'package:hana_grosir/screens/shoplist_form.dart';
import 'package:hana_grosir/screens/shop_list_page.dart';
import 'package:hana_grosir/screens/menu.dart';
import 'package:hana_grosir/models/item_model.dart';
import 'package:hana_grosir/screens/list_product.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ShopItem {
  //final int number;
  final String name;
  final IconData icon;

  ShopItem(this.name, this.icon);
}

class ShopCard extends StatelessWidget {
  final ShopItem item;
  //final List<Product> products;

  //const ShopCard({Key? key, required this.item, required this.products})
  //: super(key: key); // Constructor
  const ShopCard(this.item, {Key? key}) : super(key: key);

  Color getColorForItem(ShopItem item) {
    if (item.name == "Lihat Item") {
      return Colors.blue;
    } else if (item.name == "Tambah Item") {
      return Colors.green;
    } else if (item.name == "Logout") {
      return Colors.red;
    } else {
      return Colors.indigo; // Warna default jika tidak ada yang cocok
    }
  }

  @override
  Widget build(BuildContext context) {
    Color cardColor = getColorForItem(item);
    final request = context.watch<CookieRequest>();
    return Material(
      color: cardColor,
      // child: InkWell(
      //   // Area responsif terhadap sentuhan
      //   onTap: () {
      //     // Memunculkan SnackBar ketika diklik
      //     ScaffoldMessenger.of(context)
      //       ..hideCurrentSnackBar()
      //       ..showSnackBar(SnackBar(
      //           content: Text("Kamu telah menekan tombol ${item.name}!")));

      //     // Navigate ke route yang sesuai (tergantung jenis tombol)
      //     if (item.name == "Tambah Item") {
      //       Navigator.pushReplacement(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => ShopFormPage(),
      //           ));
      //     } else if (item.name == "Lihat Item") {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => ShopListPage(products: products),
      //         ),
      //       );
      //     }
      //   },
      //   child: Container(
      //     // Container untuk menyimpan Icon dan Text
      //     padding: const EdgeInsets.all(8),
      //     child: Center(
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             item.number.toString(),
      //             textAlign: TextAlign.center,
      //             style: const TextStyle(color: Colors.white),
      //           ),
      //           Icon(
      //             item.icon,
      //             color: Colors.white,
      //             size: 30.0,
      //           ),
      //           const Padding(padding: EdgeInsets.all(3)),
      //           Text(
      //             item.name,
      //             textAlign: TextAlign.center,
      //             style: const TextStyle(color: Colors.white),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      child: InkWell(
        // Area responsif terhadap sentuhan
        onTap: () async {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Item") {
            // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShopFormPage(),
                ));
          } else if (item.name == "Lihat Item") {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProductPage()));
          } else if (item.name == "Logout") {
            final response = await request.logout(
                // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                "http://localhost:8000/auth/logout/");
            String message = response["message"];
            if (response['status']) {
              String uname = response["username"];
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message Sampai jumpa, $uname."),
              ));
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message"),
              ));
            }
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
