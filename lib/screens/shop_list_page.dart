import 'package:flutter/material.dart';
import 'package:hana_grosir/widgets/shop_card.dart';
import 'package:hana_grosir/widgets/left_drawer.dart';
import 'package:hana_grosir/models/item_model.dart';

import 'package:flutter/material.dart';

class ShopListPage extends StatefulWidget {
  final List<Product> products;

  //ShopListPage(this.products, {required List<Product> products});
  const ShopListPage({Key? key, required this.products}) : super(key: key);

  @override
  _ShopListPageState createState() => _ShopListPageState();
}

class _ShopListPageState extends State<ShopListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Item'),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: widget.products.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            //color: Color.fromARGB(255, 148, 161, 252),
            color: Color.fromARGB(255, 222, 226, 255),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: ListTile(
              title: Text(widget.products[index].name),
              subtitle: Text('Jumlah: ${widget.products[index].ammount} '),
              //subtitle: Text('Harga: ${widget.products[index].price} '),
              onTap: () {
                // Menampilkan popup dengan informasi barang yang di-klik
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(widget.products[index].name),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Jumlah: ${widget.products[index].ammount}'),
                          Text('Harga: ${widget.products[index].price}'),
                          Text(
                              'Deskripsi: ${widget.products[index].description}'),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Tutup'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
    //   //     body: Column(
    //   //       children: [
    //   //         Expanded(
    //   //           child: ListView.builder(
    //   //             itemCount: widget.products.length,
    //   //             itemBuilder: (context, index) {
    //   //               return ListTile(
    //   //                 title: Text(widget.products[index].name),
    //   //                 onTap: () {
    //   //                   _showProductDetail(context, widget.products[index]);
    //   //                 },
    //   //               );
    //   //             },
    //   //           ),
    //   //         ),
    //   //         Padding(
    //   //           padding: const EdgeInsets.all(8.0),
    //   //           child: ElevatedButton(
    //   //             onPressed: () {
    //   //               _showAddProductDialog(context);
    //   //             },
    //   //             child: Text('Tambah Produk'),
    //   //           ),
    //   //         ),
    //   //       ],
    //   //     ),
    //   //   );
    //   // }

    //   void _showAddProductDialog(BuildContext context) {
    //     TextEditingController productNameController = TextEditingController();

    //     showDialog(
    //       context: context,
    //       builder: (context) {
    //         return AlertDialog(
    //           title: Text('Tambah Produk'),
    //           content: TextField(
    //             controller: productNameController,
    //             decoration: InputDecoration(labelText: 'Nama Produk'),
    //           ),
    //           actions: [
    //             TextButton(
    //               onPressed: () {
    //                 Navigator.pop(context); // Close the dialog
    //               },
    //               child: Text('Batal'),
    //             ),
    //             TextButton(
    //               onPressed: () {
    //                 String productName = productNameController.text.trim();
    //                 if (productName.isNotEmpty) {
    //                   // Add a new product to the list
    //                   Product newProduct = Product(
    //                     DateTime.now().millisecondsSinceEpoch.toString(),
    //                     productName,
    //                     'Description for $productName', // You can customize the description as needed
    //                   );

    //                   // Use setState to trigger a rebuild
    //                   setState(() {
    //                     widget.products.add(newProduct);
    //                   });

    //                   // Close the dialog
    //                   Navigator.pop(context);
    //                 }
    //               },
    //               child: Text('Tambah'),
    //             ),
    //           ],
    //         );
    //       },
    //     );
    //   }

    //   void _showProductDetail(BuildContext context, Product product) {
    //     showDialog(
    //       context: context,
    //       builder: (context) {
    //         return AlertDialog(
    //           title: Text('Detail Produk'),
    //           content: Text(
    //               'ID: ${product.id}\nNama: ${product.name}\nDeskripsi: ${product.description}'),
    //           actions: [
    //             TextButton(
    //               onPressed: () {
    //                 Navigator.pop(context); // Close the dialog
    //               },
    //               child: Text('Tutup'),
    //             ),
    //           ],
    //         );
    //       },
    //     );
    //   }
    // }
  }
}
