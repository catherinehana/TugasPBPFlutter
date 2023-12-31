import 'package:flutter/material.dart';
//import 'package:hana_grosir/screens/shoplist_form.dart';
import 'package:hana_grosir/widgets/left_drawer.dart';
import 'package:hana_grosir/widgets/shop_card.dart';
import 'package:hana_grosir/models/item_model.dart';

// MyHomePage
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Product> products = [];

  final List<ShopItem> items = [
    ShopItem("Lihat Item", Icons.checklist),
    ShopItem("Tambah Item", Icons.add_shopping_cart),
    ShopItem("Logout", Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hana Grosir', style: TextStyle(color: Colors.white)),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'Welcome To Hana Grosir',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.count(
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((ShopItem item) {
                  return ShopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class ShopItem {
//   final String name;
//   final IconData icon;

//   ShopItem(this.name, this.icon);
// }

// class ShopCard extends StatelessWidget {
//   final ShopItem item;

//   const ShopCard(this.item, {Key? key}) : super(key: key);

//   Color getColorForItem(ShopItem item) {
//     if (item.name == "Lihat Item") {
//       return Colors.blue;
//     } else if (item.name == "Tambah Item") {
//       return Colors.green;
//     } else if (item.name == "Logout") {
//       return Colors.red;
//     } else {
//       return Colors.indigo; // Warna default jika tidak ada yang cocok
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     Color cardColor = getColorForItem(item);

//     return Material(
//       color: cardColor,
//       child: InkWell(
//         onTap: () {
//           ScaffoldMessenger.of(context)
//             ..hideCurrentSnackBar()
//             ..showSnackBar(SnackBar(
//                 content: Text("Kamu telah menekan tombol ${item.name}!")));
//           if (item.name == "Tambah Produk") {
//             // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
//             Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ShopFormPage(),
//                 ));
//           }
//         },
//         child: Container(
//           padding: const EdgeInsets.all(8),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   item.icon,
//                   color: Colors.white,
//                   size: 30.0,
//                 ),
//                 const Padding(padding: EdgeInsets.all(3)),
//                 Text(
//                   item.name,
//                   textAlign: TextAlign.center,
//                   style: const TextStyle(color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
